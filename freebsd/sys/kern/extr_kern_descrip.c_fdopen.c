
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_dupfd; } ;
struct cdev {int dummy; } ;


 int ENODEV ;
 int dev2unit (struct cdev*) ;

__attribute__((used)) static int
fdopen(struct cdev *dev, int mode, int type, struct thread *td)
{
 td->td_dupfd = dev2unit(dev);
 return (ENODEV);
}
