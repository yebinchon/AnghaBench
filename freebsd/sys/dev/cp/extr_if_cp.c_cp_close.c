
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int drv_t ;


 int CP_DEBUG2 (int *,char*) ;
 int ** channel ;
 size_t dev2unit (struct cdev*) ;

__attribute__((used)) static int cp_close (struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 drv_t *d = channel [dev2unit (dev)];

 CP_DEBUG2 (d, ("cp_close\n"));
 return 0;
}
