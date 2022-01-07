
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef TYPE_1__* hid_device_p ;
typedef int bdaddr_p ;
struct TYPE_4__ {scalar_t__ has_cons; } ;


 int EV_KEY ;
 int EV_LED ;
 int EV_REP ;
 int EV_SYN ;
 int LED_CAPSL ;
 int LED_NUML ;
 int LED_SCROLLL ;
 scalar_t__ NONE ;
 int UI_DEV_CREATE ;
 int UI_SET_EVBIT ;
 int UI_SET_KEYBIT ;
 int UI_SET_LEDBIT ;
 int assert (int ) ;
 int close (scalar_t__) ;
 scalar_t__* consmap ;
 scalar_t__ ioctl (scalar_t__,int ,...) ;
 scalar_t__* keymap ;
 size_t nitems (scalar_t__*) ;
 scalar_t__ uinput_open_common (TYPE_1__* const,int ,char*) ;

int32_t
uinput_open_keyboard(hid_device_p const p, bdaddr_p local)
{
 size_t i;
 int32_t fd;

 assert(p != ((void*)0));

 if ((fd = uinput_open_common(p, local, "Bluetooth Keyboard")) < 0)
  goto bail_out;


 if (ioctl(fd, UI_SET_EVBIT, EV_KEY) < 0 ||
     ioctl(fd, UI_SET_EVBIT, EV_LED) < 0 ||
     ioctl(fd, UI_SET_EVBIT, EV_SYN) < 0 ||
     ioctl(fd, UI_SET_EVBIT, EV_REP) < 0 ||
     ioctl(fd, UI_SET_LEDBIT, LED_CAPSL) < 0 ||
     ioctl(fd, UI_SET_LEDBIT, LED_NUML) < 0 ||
     ioctl(fd, UI_SET_LEDBIT, LED_SCROLLL))
  goto bail_out;


 for (i = 0; i < nitems(keymap); i++)
  if (keymap[i] != NONE &&
      ioctl(fd, UI_SET_KEYBIT, keymap[i]) < 0)
   goto bail_out;


 if (p->has_cons) {
  for (i = 0; i < nitems(consmap); i++) {
   if (consmap[i] != NONE &&
       ioctl(fd, UI_SET_KEYBIT, consmap[i]) < 0)
    goto bail_out;
  }
 }

 if (ioctl(fd, UI_DEV_CREATE) >= 0)
  return (fd);

bail_out:
 if (fd >= 0)
  close(fd);
 return (-1);
}
