
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct alpm_softc {int * smbus; int lock; int * res; int smbsh; int smbst; } ;
typedef int device_t ;


 int ATPC ;
 int ATPC_SMBCTRL ;
 int EINVAL ;
 int ENXIO ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int SMBBA ;






 int SMBHCBC ;
 int SMBHCBC_CLOCK ;
 int SMBHSI ;
 int SMBHSI_HOST ;
 int SMBHSI_SLAVE ;
 int SYS_RES_IOPORT ;
 scalar_t__ alpm_debug ;
 int alpm_detach (int ) ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct alpm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mtx_init (int *,int ,char*,int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int printf (char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
alpm_attach(device_t dev)
{
 int rid;
 u_int32_t l;
 struct alpm_softc *alpm;

 alpm = device_get_softc(dev);


 l = pci_read_config(dev, ATPC, 1);
 pci_write_config(dev, ATPC, l & ~ATPC_SMBCTRL, 1);
 if (bootverbose || alpm_debug) {
  l = pci_read_config(dev, SMBHSI, 1);
  device_printf(dev, "%s/%s",
   (l & SMBHSI_HOST) ? "host":"nohost",
   (l & SMBHSI_SLAVE) ? "slave":"noslave");

  l = pci_read_config(dev, SMBHCBC, 1);
  switch (l & SMBHCBC_CLOCK) {
  case 132:
   printf(" 149K");
   break;
  case 128:
   printf(" 74K");
   break;
  case 130:
   printf(" 37K");
   break;
  case 131:
   printf(" 223K");
   break;
  case 133:
   printf(" 111K");
   break;
  case 129:
   printf(" 55K");
   break;
  default:
   printf("unknown");
   break;
  }
  printf("\n");
 }

 rid = SMBBA;
 alpm->res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,
     RF_ACTIVE);

 if (alpm->res == ((void*)0)) {
  device_printf(dev,"Could not allocate Bus space\n");
  return (ENXIO);
 }
 alpm->smbst = rman_get_bustag(alpm->res);
 alpm->smbsh = rman_get_bushandle(alpm->res);
 mtx_init(&alpm->lock, device_get_nameunit(dev), "alpm", MTX_DEF);


 alpm->smbus = device_add_child(dev, "smbus", -1);
 if (alpm->smbus == ((void*)0)) {
  alpm_detach(dev);
  return (EINVAL);
 }
 bus_generic_attach(dev);

 return (0);
}
