
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int ENODEV ;
 int debug (int,char*,scalar_t__) ;
 int debug_called (int) ;
 scalar_t__ dev2unit (struct cdev*) ;
 scalar_t__ max_sessions ;

__attribute__((used)) static int
iscsi_open(struct cdev *dev, int flags, int otype, struct thread *td)
{
     debug_called(8);

     debug(7, "dev=%d", dev2unit(dev));

     if(dev2unit(dev) > max_sessions) {

          return ENODEV;
     }
     return 0;
}
