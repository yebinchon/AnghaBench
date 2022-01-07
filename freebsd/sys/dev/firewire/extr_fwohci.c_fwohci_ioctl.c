
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
struct fwohci_softc {int dummy; } ;
struct fw_reg_req_t {void* data; int addr; } ;
struct firewire_softc {scalar_t__ fc; } ;
struct cdev {int dummy; } ;
typedef int fw_proc ;
typedef scalar_t__ caddr_t ;


 int DEV2UNIT (struct cdev*) ;

 int EINVAL ;




 int OHCI_MAX_DMA_CH ;
 int OHCI_MAX_PHY_REG ;
 int OHCI_MAX_REG ;
 void* OREAD (struct fwohci_softc*,int ) ;
 int OWRITE (struct fwohci_softc*,int ,void*) ;
 struct firewire_softc* devclass_get_softc (int ,int) ;
 int dump_db (struct fwohci_softc*,int ) ;
 int dump_dma (struct fwohci_softc*,int ) ;
 int firewire_devclass ;
 void* fwphy_rddata (struct fwohci_softc*,int ) ;
 void* fwphy_wrdata (struct fwohci_softc*,int ,void*) ;

int
fwohci_ioctl (struct cdev *dev, u_long cmd, caddr_t data, int flag, fw_proc *td)
{
 struct firewire_softc *sc;
 struct fwohci_softc *fc;
 int unit = DEV2UNIT(dev);
 int err = 0;
 struct fw_reg_req_t *reg = (struct fw_reg_req_t *) data;
 uint32_t *dmach = (uint32_t *) data;

 sc = devclass_get_softc(firewire_devclass, unit);
 if (sc == ((void*)0))
  return (EINVAL);

 fc = (struct fwohci_softc *)sc->fc;

 if (!data)
  return (EINVAL);

 switch (cmd) {
 case 128:

  if (reg->addr <= 0x800) {
   OWRITE(fc, reg->addr, reg->data);
   reg->data = OREAD(fc, reg->addr);
  } else {
   err = EINVAL;
  }
  break;
 case 130:
  if (reg->addr <= 0x800) {
   reg->data = OREAD(fc, reg->addr);
  } else {
   err = EINVAL;
  }
  break;

 case 132:
  if (*dmach <= OHCI_MAX_DMA_CH) {
   dump_dma(fc, *dmach);
   dump_db(fc, *dmach);
  } else {
   err = EINVAL;
  }
  break;


 case 131:
  if (reg->addr <= 0xf)
   reg->data = fwphy_rddata(fc, reg->addr);
  else
   err = EINVAL;
  break;
 case 129:
  if (reg->addr <= 0xf)
   reg->data = fwphy_wrdata(fc, reg->addr, reg->data);
  else
   err = EINVAL;
  break;
 default:
  err = EINVAL;
  break;
 }
 return err;
}
