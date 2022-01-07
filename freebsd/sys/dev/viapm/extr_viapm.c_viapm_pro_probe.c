
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct viapm_softc {int base; int iorid; void* type; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int SYS_RES_IOPORT ;
 int VIAPM_8233_BASE ;
 int VIAPM_BASE_ADDR ;
 int VIAPM_PRO_BASE ;
 int VIAPM_PRO_BA_MASK ;
 int VIAPM_PRO_SMBCTRL ;
 void* VIAPM_TYP_596B ;
 void* VIAPM_TYP_686A ;
 void* VIAPM_TYP_UNKNOWN ;
 int bootverbose ;
 int bus_set_resource (int ,int ,int,int,int) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
viapm_pro_probe(device_t dev)
{
 struct viapm_softc *viapm = (struct viapm_softc *)device_get_softc(dev);



 u_int32_t base_cfgreg;
 char *desc;

 switch (pci_get_devid(dev)) {
 case 135:
  desc = "VIA VT82C596A Power Management Unit";
  viapm->type = VIAPM_TYP_596B;
  base_cfgreg = VIAPM_PRO_BASE;
  goto viapro;

 case 134:
  desc = "VIA VT82C596B Power Management Unit";
  viapm->type = VIAPM_TYP_596B;
  base_cfgreg = VIAPM_PRO_BASE;
  goto viapro;

 case 133:
  desc = "VIA VT82C686A Power Management Unit";
  viapm->type = VIAPM_TYP_686A;
  base_cfgreg = VIAPM_PRO_BASE;
  goto viapro;

 case 131:
 case 132:
  desc = "VIA VT8233 Power Management Unit";
  viapm->type = VIAPM_TYP_UNKNOWN;
  base_cfgreg = VIAPM_8233_BASE;
  goto viapro;

 case 130:
  desc = "VIA VT8235 Power Management Unit";
  viapm->type = VIAPM_TYP_UNKNOWN;
  base_cfgreg = VIAPM_8233_BASE;
  goto viapro;

 case 129:
  desc = "VIA VT8237 Power Management Unit";
  viapm->type = VIAPM_TYP_UNKNOWN;
  base_cfgreg = VIAPM_8233_BASE;
  goto viapro;

 case 128:
  desc = "VIA CX700 Power Management Unit";
  viapm->type = VIAPM_TYP_UNKNOWN;
  base_cfgreg = VIAPM_8233_BASE;
  goto viapro;

 viapro:
  viapm->base = pci_read_config(dev, base_cfgreg, 4) & VIAPM_PRO_BA_MASK;





  viapm->iorid = base_cfgreg;
  if (bus_set_resource(dev, SYS_RES_IOPORT, viapm->iorid,
         viapm->base, 16)) {
   device_printf(dev, "could not set bus resource 0x%x\n",
     viapm->base);
   return ENXIO;
  }

  if (bootverbose) {
   device_printf(dev, "SMBus I/O base at 0x%x\n", viapm->base);
  }

  device_set_desc(dev, desc);
  return (BUS_PROBE_DEFAULT);

 default:
  break;
 }

 return ENXIO;
}
