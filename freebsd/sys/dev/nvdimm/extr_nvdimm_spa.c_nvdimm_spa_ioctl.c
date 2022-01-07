
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct thread {int dummy; } ;
struct nvdimm_spa_dev {int spa_len; } ;
struct cdev {struct nvdimm_spa_dev* si_drv1; } ;
typedef int off_t ;
typedef scalar_t__ caddr_t ;


 int DEV_BSIZE ;


 int ENOTTY ;

__attribute__((used)) static int
nvdimm_spa_ioctl(struct cdev *cdev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 struct nvdimm_spa_dev *dev;
 int error;

 dev = cdev->si_drv1;
 error = 0;
 switch (cmd) {
 case 128:
  *(u_int *)data = DEV_BSIZE;
  break;
 case 129:
  *(off_t *)data = dev->spa_len;
  break;
 default:
  error = ENOTTY;
  break;
 }
 return (error);
}
