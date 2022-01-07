
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int reg_array_size; scalar_t__ extended_regs; } ;


 int EOF ;
 int UCHAR_MAX ;
 TYPE_1__ bmachine ;
 int readch () ;
 int warnx (char*,...) ;

__attribute__((used)) static int
readreg(void)
{
 int ch1, ch2, idx;

 idx = readch();
 if (idx == 0xff && bmachine.extended_regs) {
  ch1 = readch();
  ch2 = readch();
  if (ch1 == EOF || ch2 == EOF) {
   warnx("unexpected eof");
   idx = -1;
  } else
   idx = (ch1 << 8) + ch2 + UCHAR_MAX + 1;
 }
 if (idx < 0 || (unsigned)idx >= bmachine.reg_array_size) {
  warnx("internal error: reg num = %d", idx);
  idx = -1;
 }
 return (idx);
}
