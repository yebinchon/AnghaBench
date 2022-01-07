
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_MAX ;
 int putchar (char const) ;

__attribute__((used)) static void
printcol(const char *s, size_t *col, const size_t col_max)
{

 for (; *s && *col < col_max; ++s) {
  size_t new_col;

  switch (*s) {
  case '\t':




   if (*col > SIZE_MAX - 8)
    return;


   new_col = (*col / 8 + 1) * 8;





   if (new_col > col_max)
    return;
   *col = new_col;
   break;
  default:
   ++(*col);
  }
  putchar(*s);
 }
}
