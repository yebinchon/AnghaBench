
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct cdev {int si_drv1; } ;


 int nvdimm_spa_uio (int ,struct uio*) ;

__attribute__((used)) static int
nvdimm_spa_rw(struct cdev *dev, struct uio *uio, int ioflag)
{

 return (nvdimm_spa_uio(dev->si_drv1, uio));
}
