
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static void
mkprint(register char *dst, register unsigned char *src, register int len)
{
 while (len-- > 0)
 {
  register unsigned char ch = *src++;

  if (ch < ' ') {
   *dst++ = '^';
   *dst++ = ch + '@';
  } else if (ch < 0177) {
   *dst++ = ch;
  } else if (ch == 0177) {
   *dst++ = '^';
   *dst++ = '?';
  } else {
   sprintf(dst, "\\%03o", ch);
   dst += 4;
  }
 }
 *dst = '\0';
}
