
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct cdev {int dummy; } ;


 int log_console (struct uio*) ;
 int ttydev_write (struct cdev*,struct uio*,int) ;

__attribute__((used)) static int
ttyconsdev_write(struct cdev *dev, struct uio *uio, int ioflag)
{

 log_console(uio);

 return (ttydev_write(dev, uio, ioflag));
}
