
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int bitstr_t ;


 scalar_t__ bit_test (int *,scalar_t__) ;
 int uinput_rep_key (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ xsize ;

void
uinput_kbd_write(bitstr_t *m, int32_t fb, int32_t make, int32_t fd)
{
 int32_t i;

 if (fd >= 0) {
  for (i = fb; i < xsize; i++) {
   if (bit_test(m, i))
    uinput_rep_key(fd, i, make);
  }
 }
}
