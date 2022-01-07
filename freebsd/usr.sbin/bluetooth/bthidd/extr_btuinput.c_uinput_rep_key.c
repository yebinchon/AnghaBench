
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ EVDEV_RCPT_HW_KBD ;
 int EV_KEY ;
 int EV_SYN ;
 scalar_t__ NONE ;
 scalar_t__ SYN_REPORT ;
 int assert (int) ;
 scalar_t__* keymap ;
 scalar_t__ nitems (scalar_t__*) ;
 scalar_t__ uinput_get_rcpt_mask () ;
 scalar_t__ uinput_write_event (scalar_t__,int ,scalar_t__,scalar_t__) ;

int32_t
uinput_rep_key(int32_t fd, int32_t key, int32_t make)
{
 int32_t rcpt_mask;

 assert(fd >= 0);

 rcpt_mask = uinput_get_rcpt_mask();
 if (!(rcpt_mask & EVDEV_RCPT_HW_KBD))
  return (0);

 if (key >= 0 && key < (int32_t)nitems(keymap) &&
     keymap[key] != NONE) {
  if (uinput_write_event(fd, EV_KEY, keymap[key], make) > 0 &&
      uinput_write_event(fd, EV_SYN, SYN_REPORT, 0) > 0)
   return (0);
 }
 return (-1);
}
