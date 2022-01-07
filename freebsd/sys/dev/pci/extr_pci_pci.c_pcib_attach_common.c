
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint8_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ limit; scalar_t__ base; } ;
struct TYPE_3__ {int sec; int sub; } ;
struct pcib_softc {int domain; int bridgectl; int pribus; int flags; scalar_t__ pmemlimit; scalar_t__ pmembase; scalar_t__ memlimit; scalar_t__ membase; int iolimit; int iobase; TYPE_2__ pmem; TYPE_2__ mem; TYPE_2__ io; TYPE_1__ bus; int dev; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int PCIB_BCR_ISA_ENABLE ;
 int PCIB_BCR_VGA_ENABLE ;
 int PCIB_DISABLE_MSI ;
 int PCIB_DISABLE_MSIX ;
 int PCIB_HOTPLUG ;
 int PCIB_SUBTRACTIVE ;
 scalar_t__ PCIP_BRIDGE_PCI_SUBTRACTIVE ;
 int PCIR_BRIDGECTL_1 ;
 int PCIR_PRIBUS_1 ;
 int PCIR_PROGIF ;
 int PCIR_SECBUS_1 ;
 int PCIR_SUBBUS_1 ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int ,int*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ bootverbose ;
 struct pcib_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,...) ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_bus (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_domain (int ) ;
 scalar_t__ pci_msi_device_blacklisted (int ) ;
 scalar_t__ pci_msix_device_blacklisted (int ) ;
 scalar_t__ pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;
 int pcib_cfg_save (struct pcib_softc*) ;
 scalar_t__ pcib_is_io_open (struct pcib_softc*) ;
 scalar_t__ pcib_is_nonprefetch_open (struct pcib_softc*) ;
 scalar_t__ pcib_is_prefetch_open (struct pcib_softc*) ;
 scalar_t__ pcib_is_window_open (TYPE_2__*) ;
 int pcib_probe_hotplug (struct pcib_softc*) ;
 int pcib_probe_windows (struct pcib_softc*) ;
 int pcib_setup_hotplug (struct pcib_softc*) ;
 int pcib_setup_secbus (int ,TYPE_1__*,int) ;
 int printf (char*,...) ;
 int strncmp (char*,char*,int) ;

void
pcib_attach_common(device_t dev)
{
    struct pcib_softc *sc;
    struct sysctl_ctx_list *sctx;
    struct sysctl_oid *soid;
    int comma;

    sc = device_get_softc(dev);
    sc->dev = dev;




    sc->domain = pci_get_domain(dev);

    sc->bus.sec = pci_read_config(dev, PCIR_SECBUS_1, 1);
    sc->bus.sub = pci_read_config(dev, PCIR_SUBBUS_1, 1);

    sc->bridgectl = pci_read_config(dev, PCIR_BRIDGECTL_1, 2);
    pcib_cfg_save(sc);





    sc->pribus = pci_get_bus(dev);
    pci_write_config(dev, PCIR_PRIBUS_1, sc->pribus, 1);




    sctx = device_get_sysctl_ctx(dev);
    soid = device_get_sysctl_tree(dev);
    SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "domain",
      CTLFLAG_RD, &sc->domain, 0, "Domain number");
    SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "pribus",
      CTLFLAG_RD, &sc->pribus, 0, "Primary bus number");
    SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "secbus",
      CTLFLAG_RD, &sc->bus.sec, 0, "Secondary bus number");
    SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "subbus",
      CTLFLAG_RD, &sc->bus.sub, 0, "Subordinate bus number");




    switch (pci_get_devid(dev)) {

    case 0x12258086:
 {
     uint8_t supbus;

     supbus = pci_read_config(dev, 0x41, 1);
     if (supbus != 0xff) {
  sc->bus.sec = supbus + 1;
  sc->bus.sub = supbus + 1;
     }
     break;
 }
    case 0xa002177d:
    case 0x124b8086:
    case 0x060513d7:
 sc->flags |= PCIB_SUBTRACTIVE;
 break;



    case 0x00dd10de:
 {
     char *cp;

     if ((cp = kern_getenv("smbios.planar.maker")) == ((void*)0))
  break;
     if (strncmp(cp, "Compal", 6) != 0) {
  freeenv(cp);
  break;
     }
     freeenv(cp);
     if ((cp = kern_getenv("smbios.planar.product")) == ((void*)0))
  break;
     if (strncmp(cp, "08A0", 4) != 0) {
  freeenv(cp);
  break;
     }
     freeenv(cp);
     if (sc->bus.sub < 0xa) {
  pci_write_config(dev, PCIR_SUBBUS_1, 0xa, 1);
  sc->bus.sub = pci_read_config(dev, PCIR_SUBBUS_1, 1);
     }
     break;
 }

    }

    if (pci_msi_device_blacklisted(dev))
 sc->flags |= PCIB_DISABLE_MSI;

    if (pci_msix_device_blacklisted(dev))
 sc->flags |= PCIB_DISABLE_MSIX;
    if ((pci_get_devid(dev) & 0xff00ffff) == 0x24008086 ||
      pci_read_config(dev, PCIR_PROGIF, 1) == PCIP_BRIDGE_PCI_SUBTRACTIVE)
 sc->flags |= PCIB_SUBTRACTIVE;
    if (bootverbose) {
 device_printf(dev, "  domain            %d\n", sc->domain);
 device_printf(dev, "  secondary bus     %d\n", sc->bus.sec);
 device_printf(dev, "  subordinate bus   %d\n", sc->bus.sub);
 if (pcib_is_io_open(sc))
     device_printf(dev, "  I/O decode        0x%x-0x%x\n",
       sc->iobase, sc->iolimit);
 if (pcib_is_nonprefetch_open(sc))
     device_printf(dev, "  memory decode     0x%jx-0x%jx\n",
       (uintmax_t)sc->membase, (uintmax_t)sc->memlimit);
 if (pcib_is_prefetch_open(sc))
     device_printf(dev, "  prefetched decode 0x%jx-0x%jx\n",
       (uintmax_t)sc->pmembase, (uintmax_t)sc->pmemlimit);

 if (sc->bridgectl & (PCIB_BCR_ISA_ENABLE | PCIB_BCR_VGA_ENABLE) ||
     sc->flags & PCIB_SUBTRACTIVE) {
  device_printf(dev, "  special decode    ");
  comma = 0;
  if (sc->bridgectl & PCIB_BCR_ISA_ENABLE) {
   printf("ISA");
   comma = 1;
  }
  if (sc->bridgectl & PCIB_BCR_VGA_ENABLE) {
   printf("%sVGA", comma ? ", " : "");
   comma = 1;
  }
  if (sc->flags & PCIB_SUBTRACTIVE)
   printf("%ssubtractive", comma ? ", " : "");
  printf("\n");
 }
    }






    pci_enable_busmaster(dev);
}
