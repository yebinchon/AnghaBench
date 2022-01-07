
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ MAX_CHARS_PER_LINE ;
 scalar_t__ charcount ;
 int fputs (char*,int *) ;
 int lastchar ;
 int putc (int,int *) ;

__attribute__((used)) static void
putcharwrap(FILE *f, int ch)
{

 if (charcount >= MAX_CHARS_PER_LINE) {
  charcount = 0;
  fputs("\\\n", f);
 }
 if (lastchar != -1) {
  charcount++;
  putc(lastchar, f);
 }
 lastchar = ch;
}
