
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct viapm_softc {int base; int iorid; int type; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int SYS_RES_IOPORT ;
 int VIAPM_586B_3040E_ACTIV ;
 int VIAPM_586B_3040E_BASE ;
 int VIAPM_586B_3040F_ACTIV ;
 int VIAPM_586B_3040F_BASE ;
 int VIAPM_586B_BA_MASK ;



 int VIAPM_586B_REVID ;
 int VIAPM_TYP_586B_3040E ;
 int VIAPM_TYP_586B_3040F ;

 int bus_set_resource (int ,int ,int ,int,int) ;
 int bzero (struct viapm_softc*,int) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
viapm_586b_probe(device_t dev)
{
 struct viapm_softc *viapm = (struct viapm_softc *)device_get_softc(dev);
 u_int32_t l;
 u_int16_t s;
 u_int8_t c;

 switch (pci_get_devid(dev)) {
 case 128:

  bzero(viapm, sizeof(struct viapm_softc));

  l = pci_read_config(dev, VIAPM_586B_REVID, 1);
  switch (l) {
  case 131:
   viapm->type = VIAPM_TYP_586B_3040E;
   viapm->iorid = VIAPM_586B_3040E_BASE;


   s = pci_read_config(dev, VIAPM_586B_3040E_ACTIV, 2);
   pci_write_config(dev, VIAPM_586B_3040E_ACTIV, s | 0x1, 2);
   break;

  case 130:
  case 129:
  default:
   viapm->type = VIAPM_TYP_586B_3040F;
   viapm->iorid = VIAPM_586B_3040F_BASE;


   c = pci_read_config(dev, VIAPM_586B_3040F_ACTIV, 1);
   pci_write_config(dev, VIAPM_586B_3040F_ACTIV, c | 0x80, 1);
   break;
  }

  viapm->base = pci_read_config(dev, viapm->iorid, 4) &
    VIAPM_586B_BA_MASK;





  if (bus_set_resource(dev, SYS_RES_IOPORT, viapm->iorid,
       viapm->base, 256)) {
   device_printf(dev, "could not set bus resource\n");
   return ENXIO;
  }
  device_set_desc(dev, "VIA VT82C586B Power Management Unit");
  return (BUS_PROBE_DEFAULT);

 default:
  break;
 }

 return ENXIO;
}
