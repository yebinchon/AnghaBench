
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
struct thread {int dummy; } ;
struct spigen_transfer_mmapped {int dummy; } ;
struct spigen_transfer {int dummy; } ;
struct cdev {int si_drv1; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int ENOTTY ;






 int spibus_get_clock (int ,int *) ;
 int spibus_get_mode (int ,int *) ;
 int spibus_set_clock (int ,int ) ;
 int spibus_set_mode (int ,int ) ;
 int spigen_transfer (struct cdev*,struct spigen_transfer*) ;
 int spigen_transfer_mmapped (struct cdev*,struct spigen_transfer_mmapped*) ;

__attribute__((used)) static int
spigen_ioctl(struct cdev *cdev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 device_t dev = cdev->si_drv1;
 int error;

 switch (cmd) {
 case 129:
  error = spigen_transfer(cdev, (struct spigen_transfer *)data);
  break;
 case 128:
  error = spigen_transfer_mmapped(cdev, (struct spigen_transfer_mmapped *)data);
  break;
 case 133:
  error = spibus_get_clock(dev, (uint32_t *)data);
  break;
 case 131:
  error = spibus_set_clock(dev, *(uint32_t *)data);
  break;
 case 132:
  error = spibus_get_mode(dev, (uint32_t *)data);
  break;
 case 130:
  error = spibus_set_mode(dev, *(uint32_t *)data);
  break;
 default:
  error = ENOTTY;
  break;
 }
 return (error);
}
