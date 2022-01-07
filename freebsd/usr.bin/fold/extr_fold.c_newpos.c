
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;


 int MB_LEN_MAX ;
 scalar_t__ bflag ;
 size_t wcrtomb (char*,int ,int *) ;
 int wcwidth (int ) ;

__attribute__((used)) static int
newpos(int col, wint_t ch)
{
 char buf[MB_LEN_MAX];
 size_t len;
 int w;

 if (bflag) {
  len = wcrtomb(buf, ch, ((void*)0));
  col += len;
 } else
  switch (ch) {
  case '\b':
   if (col > 0)
    --col;
   break;
  case '\r':
   col = 0;
   break;
  case '\t':
   col = (col + 8) & ~7;
   break;
  default:
   if ((w = wcwidth(ch)) > 0)
    col += w;
   break;
  }

 return (col);
}
