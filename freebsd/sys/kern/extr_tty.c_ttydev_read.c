
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct tty {int dummy; } ;
struct cdev {struct tty* si_drv1; } ;


 int ENXIO ;
 int tty_unlock (struct tty*) ;
 int ttydev_enter (struct tty*) ;
 int ttydisc_read (struct tty*,struct uio*,int) ;

__attribute__((used)) static int
ttydev_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct tty *tp = dev->si_drv1;
 int error;

 error = ttydev_enter(tp);
 if (error)
  goto done;
 error = ttydisc_read(tp, uio, ioflag);
 tty_unlock(tp);





done: if (error == ENXIO)
  error = 0;
 return (error);
}
