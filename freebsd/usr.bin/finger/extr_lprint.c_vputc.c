
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isascii (unsigned char) ;
 scalar_t__ isprint (unsigned char) ;
 int putchar (char) ;
 unsigned char toascii (unsigned char) ;

__attribute__((used)) static void
vputc(unsigned char ch)
{
 int meta;

 if (!isprint(ch) && !isascii(ch)) {
  (void)putchar('M');
  (void)putchar('-');
  ch = toascii(ch);
  meta = 1;
 } else
  meta = 0;
 if (isprint(ch) || (!meta && (ch == ' ' || ch == '\t' || ch == '\n')))
  (void)putchar(ch);
 else {
  (void)putchar('^');
  (void)putchar(ch == '\177' ? '?' : ch | 0100);
 }
}
