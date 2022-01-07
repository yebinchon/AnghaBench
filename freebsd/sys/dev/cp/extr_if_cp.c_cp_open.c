
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int drv_t ;


 int CP_DEBUG2 (int *,char*) ;
 int ENXIO ;
 int NBRD ;
 int NCHAN ;
 int ** channel ;
 int dev2unit (struct cdev*) ;

__attribute__((used)) static int cp_open (struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 int unit = dev2unit (dev);
 drv_t *d;

 if (unit >= NBRD*NCHAN || ! (d = channel[unit]))
  return ENXIO;
 CP_DEBUG2 (d, ("cp_open\n"));
 return 0;
}
