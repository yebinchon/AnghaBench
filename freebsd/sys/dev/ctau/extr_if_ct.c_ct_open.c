
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int drv_t ;


 int CT_DEBUG2 (int *,char*) ;
 int ENXIO ;
 size_t NCHAN ;
 size_t NCTAU ;
 int ** channel ;
 size_t dev2unit (struct cdev*) ;

__attribute__((used)) static int ct_open (struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 drv_t *d;

 if (dev2unit(dev) >= NCTAU*NCHAN || ! (d = channel[dev2unit(dev)]))
  return ENXIO;

 CT_DEBUG2 (d, ("ct_open\n"));
 return 0;
}
