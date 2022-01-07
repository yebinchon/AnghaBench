
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int keyboard_t ;
typedef int caddr_t ;
struct TYPE_2__ {scalar_t__ td_critnest; } ;


 int EDEADLK ;
 int Giant ;



 int UKBD_LOCK () ;
 int UKBD_UNLOCK () ;
 int USB_IN_POLLING_MODE_FUNC () ;
 TYPE_1__* curthread ;
 int mtx_owned (int *) ;
 int ukbd_ioctl_locked (int *,int,int ) ;

__attribute__((used)) static int
ukbd_ioctl(keyboard_t *kbd, u_long cmd, caddr_t arg)
{
 int result;




 if (curthread->td_critnest != 0)
  return (EDEADLK);
 switch (cmd) {
 case 130:
 case 128:
 case 129:
  if (!mtx_owned(&Giant) && !USB_IN_POLLING_MODE_FUNC())
   return (EDEADLK);

 default:
  UKBD_LOCK();
  result = ukbd_ioctl_locked(kbd, cmd, arg);
  UKBD_UNLOCK();
  return (result);
 }
}
