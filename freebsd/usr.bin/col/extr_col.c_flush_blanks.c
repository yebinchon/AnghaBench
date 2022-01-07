
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ESC ;
 char FHLF ;
 int PUTC (char) ;
 scalar_t__ fine ;
 int nblank_lines ;

__attribute__((used)) static void
flush_blanks(void)
{
 int half, i, nb;

 half = 0;
 nb = nblank_lines;
 if (nb & 1) {
  if (fine)
   half = 1;
  else
   nb++;
 }
 nb /= 2;
 for (i = nb; --i >= 0;)
  PUTC('\n');
 if (half) {
  PUTC(ESC);
  PUTC(FHLF);
  if (!nb)
   PUTC('\r');
 }
 nblank_lines = 0;
}
