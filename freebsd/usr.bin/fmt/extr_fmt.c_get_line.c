
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wint_t ;
typedef char wchar_t ;
typedef int FILE ;


 char WEOF ;
 char* XMALLOC (size_t) ;
 int format_troff ;
 char getwc (int *) ;
 scalar_t__ iswprint (char) ;
 size_t tab_width ;
 int wcwidth (char) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static wchar_t *
get_line(FILE *stream, size_t *lengthp)
{
 static wchar_t *buf = ((void*)0);
 static size_t length = 0;
 size_t len = 0;
 wint_t ch;
 size_t spaces_pending = 0;
 int troff = 0;
 size_t col = 0;
 int cwidth;

 if (buf == ((void*)0)) {
  length = 100;
  buf = XMALLOC(length * sizeof(wchar_t));
 }
 while ((ch = getwc(stream)) != '\n' && ch != WEOF) {
  if (len + spaces_pending == 0 && ch == '.' && !format_troff)
   troff = 1;
  if (ch == ' ')
   ++spaces_pending;
  else if (troff || iswprint(ch)) {
   while (len + spaces_pending >= length) {
    length *= 2;
    buf = xrealloc(buf, length * sizeof(wchar_t));
   }
   while (spaces_pending > 0) {
    --spaces_pending;
    buf[len++] = ' ';
    col++;
   }
   buf[len++] = ch;
   col += (cwidth = wcwidth(ch)) > 0 ? cwidth : 1;
  } else if (ch == '\t')
   spaces_pending += tab_width -
       (col + spaces_pending) % tab_width;
  else if (ch == '\b') {
   if (len)
    --len;
   if (col)
    --col;
  }
 }
 *lengthp = len;
 return (len > 0 || ch != WEOF) ? buf : 0;
}
