
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int buf ;
typedef int bitstr_t ;


 scalar_t__ bit_test (int *,scalar_t__) ;
 scalar_t__ kbd_xlate (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 int write (scalar_t__,scalar_t__*,int) ;
 scalar_t__ xsize ;

__attribute__((used)) static void
kbd_write(bitstr_t *m, int32_t fb, int32_t make, int32_t fd)
{
 int32_t i, *b, *eob, n, buf[64];

 b = buf;
 eob = b + sizeof(buf)/sizeof(buf[0]);
 i = fb;

 while (i < xsize) {
  if (bit_test(m, i)) {
   n = kbd_xlate(i, make, b, eob);
   if (n == -1) {
    write(fd, buf, (b - buf) * sizeof(buf[0]));
    b = buf;
    continue;
   }

   b += n;
  }

  i ++;
 }

 if (b != buf)
  write(fd, buf, (b - buf) * sizeof(buf[0]));
}
