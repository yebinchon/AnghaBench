
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void
hexdump(char *p, int len, int screenwidth)
{
 int n, i;
 int width;

 width = 0;
 do {
  width += 2;
  i = 13;
  i += (width / 2) + 1;
  i += (width * 2);
  i += 3;
  i += width;
  i += 1;
 } while (i < screenwidth);
 width -= 2;

 for (n = 0; n < len; n += width) {
  for (i = n; i < n + width; i++) {
   if ((i % width) == 0) {
    printf("       0x%04x", i);
   }
   if ((i % 2) == 0) {
    printf(" ");
   }
   if (i < len)
    printf("%02x", p[i] & 0xff);
   else
    printf("  ");
  }
  printf("  |");
  for (i = n; i < n + width; i++) {
   if (i >= len)
    break;
   if (p[i] >= ' ' && p[i] <= '~')
    printf("%c", p[i]);
   else
    printf(".");
  }
  printf("|\n");
 }
 if ((i % width) != 0)
  printf("\n");
}
