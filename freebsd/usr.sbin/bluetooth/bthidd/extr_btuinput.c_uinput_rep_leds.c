
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ EVDEV_RCPT_HW_KBD ;
 int EV_LED ;
 int assert (int) ;
 int * led_codes ;
 size_t nitems (int *) ;
 scalar_t__ uinput_get_rcpt_mask () ;
 scalar_t__ uinput_write_event (scalar_t__,int ,int ,int) ;

int32_t
uinput_rep_leds(int32_t fd, int state, int mask)
{
 size_t i;
 int32_t rcpt_mask;

 assert(fd >= 0);

 rcpt_mask = uinput_get_rcpt_mask();
 if (!(rcpt_mask & EVDEV_RCPT_HW_KBD))
  return (0);

 for (i = 0; i < nitems(led_codes); i++) {
  if (mask & (1 << i) &&
      uinput_write_event(fd, EV_LED, led_codes[i],
     state & (1 << i) ? 1 : 0) < 0)
   return (-1);
 }

 return (0);
}
