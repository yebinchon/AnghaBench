
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct apc_tbl TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct sge_softc {int sge_flags; int sge_dev; } ;
typedef int * device_t ;
typedef int devclass_t ;
struct apc_tbl {scalar_t__ vid; scalar_t__ did; } ;


 int DELAY (int) ;
 int EINVAL ;
 int ETHER_ADDR_LEN ;
 int M_TEMP ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_ISA ;
 int SGE_FLAG_RGMII ;
 int SIS_VENDORID ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int) ;
 int devclass_get_maxunit (int ) ;
 scalar_t__ device_get_children (int *,int ***,int*) ;
 int device_printf (int ,char*) ;
 int free (int **,int ) ;
 int inb (int) ;
 int nitems (TYPE_1__*) ;
 int outb (int,int) ;
 scalar_t__ pci_get_class (int *) ;
 scalar_t__ pci_get_device (int *) ;
 scalar_t__ pci_get_subclass (int *) ;
 scalar_t__ pci_get_vendor (int *) ;
 int pci_read_config (int *,int,int) ;
 int pci_write_config (int *,int,int,int) ;

__attribute__((used)) static int
sge_get_mac_addr_apc(struct sge_softc *sc, uint8_t *dest)
{

 devclass_t pci;
 device_t bus, dev = ((void*)0);
 device_t *kids;
 struct apc_tbl {
  uint16_t vid;
  uint16_t did;
 } *tp, apc_tbls[] = {
  { SIS_VENDORID, 0x0965 },
  { SIS_VENDORID, 0x0966 },
  { SIS_VENDORID, 0x0968 }
 };
 uint8_t reg;
 int busnum, i, j, numkids;

 pci = devclass_find("pci");
 for (busnum = 0; busnum < devclass_get_maxunit(pci); busnum++) {
  bus = devclass_get_device(pci, busnum);
  if (!bus)
   continue;
  if (device_get_children(bus, &kids, &numkids) != 0)
   continue;
  for (i = 0; i < numkids; i++) {
   dev = kids[i];
   if (pci_get_class(dev) == PCIC_BRIDGE &&
       pci_get_subclass(dev) == PCIS_BRIDGE_ISA) {
    tp = apc_tbls;
    for (j = 0; j < nitems(apc_tbls); j++) {
     if (pci_get_vendor(dev) == tp->vid &&
         pci_get_device(dev) == tp->did) {
      free(kids, M_TEMP);
      goto apc_found;
     }
     tp++;
    }
   }
                }
  free(kids, M_TEMP);
 }
 device_printf(sc->sge_dev, "couldn't find PCI-ISA bridge\n");
 return (EINVAL);
apc_found:

 reg = pci_read_config(dev, 0x48, 1);
 pci_write_config(dev, 0x48, reg & ~0x02, 1);
 DELAY(50);
 pci_read_config(dev, 0x48, 1);

 for (i = 0; i < ETHER_ADDR_LEN; i++) {
  outb(0x78, 0x09 + i);
  dest[i] = inb(0x79);
 }
 outb(0x78, 0x12);
 if ((inb(0x79) & 0x80) != 0)
  sc->sge_flags |= SGE_FLAG_RGMII;

 pci_write_config(dev, 0x48, reg, 1);

 return (0);



}
