
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 scalar_t__ output_sq ;
 int putchar (char) ;
 int puts (char const*) ;
 int stdout ;

__attribute__((used)) static void show(const char *arg)
{
 if (output_sq) {
  int sq = '\'', ch;

  putchar(sq);
  while ((ch = *arg++)) {
   if (ch == sq)
    fputs("'\\'", stdout);
   putchar(ch);
  }
  putchar(sq);
  putchar(' ');
 }
 else
  puts(arg);
}
