
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int keyboard_t ;
typedef int caddr_t ;


 int ENXIO ;
 int * VKBD_KEYBOARD (struct cdev*) ;
 int kbdd_ioctl (int *,int ,int ) ;

__attribute__((used)) static int
vkbd_dev_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
{
 keyboard_t *kbd = VKBD_KEYBOARD(dev);

 return ((kbd == ((void*)0))? ENXIO : kbdd_ioctl(kbd, cmd, data));
}
