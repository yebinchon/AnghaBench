
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t line_width ;
 int printcol (char const*,size_t*,size_t) ;
 int printf (char*,...) ;
 int putchar (char) ;
 size_t width ;

__attribute__((used)) static void
println(const char *s1, const char divider, const char *s2)
{
 size_t col;


 col = 0;
 if (s1) {

  printcol(s1, &col, width);

 }


 for (; col < width; ++col)
  putchar(' ');


 if (divider == ' ' && !s2) {
  printf(" (\n");
  return;
 }





 if (!s2) {
  printf(" %c\n", divider);
  return;
 }
 printf(" %c ", divider);
 col += 3;


 printcol(s2, &col, line_width);

 putchar('\n');
}
