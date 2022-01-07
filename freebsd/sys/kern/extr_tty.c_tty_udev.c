
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__ t_dev; } ;
typedef int dev_t ;


 int NODEV ;
 int dev2udev (scalar_t__) ;

dev_t
tty_udev(struct tty *tp)
{

 if (tp->t_dev)
  return (dev2udev(tp->t_dev));
 else
  return (NODEV);
}
