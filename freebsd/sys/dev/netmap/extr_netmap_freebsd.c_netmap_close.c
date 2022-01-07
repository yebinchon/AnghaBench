
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 scalar_t__ netmap_verbose ;
 int nm_prinf (char*,struct cdev*,int,int,struct thread*) ;

__attribute__((used)) static int
netmap_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 if (netmap_verbose)
  nm_prinf("dev %p fflag 0x%x devtype %d td %p",
   dev, fflag, devtype, td);
 return 0;
}
