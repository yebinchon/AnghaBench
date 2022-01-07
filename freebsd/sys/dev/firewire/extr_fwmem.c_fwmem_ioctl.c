
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fwmem_softc {int eui; } ;
struct fw_eui64 {int dummy; } ;
struct cdev {struct fwmem_softc* si_drv1; } ;
typedef int fw_proc ;
typedef int * caddr_t ;


 int EINVAL ;


 int bcopy (int *,int *,int) ;

int
fwmem_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag, fw_proc *td)
{
 struct fwmem_softc *fms;
 int err = 0;

 fms = dev->si_drv1;
 switch (cmd) {
 case 128:
  bcopy(data, &fms->eui, sizeof(struct fw_eui64));
  break;
 case 129:
  bcopy(&fms->eui, data, sizeof(struct fw_eui64));
  break;
 default:
  err = EINVAL;
 }
 return (err);
}
