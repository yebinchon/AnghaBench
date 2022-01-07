
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wint_t ;
typedef char wchar_t ;


 scalar_t__ LINE_MAX ;
 char WEOF ;
 int err (int,char*) ;
 char getwchar () ;
 int iswblank (char) ;
 int newpos (int,char) ;
 char* realloc (char*,int) ;
 scalar_t__ sflag ;
 int wmemmove (char*,char*,int) ;
 int wprintf (char*,int,char*) ;

void
fold(int width)
{
 static wchar_t *buf;
 static int buf_max;
 int col, i, indx, space;
 wint_t ch;

 col = indx = 0;
 while ((ch = getwchar()) != WEOF) {
  if (ch == '\n') {
   wprintf(L"%.*ls\n", indx, buf);
   col = indx = 0;
   continue;
  }
  if ((col = newpos(col, ch)) > width) {
   if (sflag) {
    i = indx;
    while (--i >= 0 && !iswblank(buf[i]))
     ;
    space = i;
   }
   if (sflag && space != -1) {
    space++;
    wprintf(L"%.*ls\n", space, buf);
    wmemmove(buf, buf + space, indx - space);
    indx -= space;
    col = 0;
    for (i = 0; i < indx; i++)
     col = newpos(col, buf[i]);
   } else {
    wprintf(L"%.*ls\n", indx, buf);
    col = indx = 0;
   }
   col = newpos(col, ch);
  }
  if (indx + 1 > buf_max) {
   buf_max += LINE_MAX;
   buf = realloc(buf, sizeof(*buf) * buf_max);
   if (buf == ((void*)0))
    err(1, "realloc()");
  }
  buf[indx++] = ch;
 }

 if (indx != 0)
  wprintf(L"%.*ls", indx, buf);
}
