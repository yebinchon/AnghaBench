
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 scalar_t__ flag_nohighlight ;
 scalar_t__ isatty (int ) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int tgetent (char*,int *) ;
 char* tgetstr (char*,char**) ;

__attribute__((used)) static void
highlight(char *dst, char *src, int len, int *extralen)
{
 static int first = 1;
 static const char *term_so, *term_se;

 if (first) {
  static char cbuf[512];
  char tbuf[1024], *b;

  term_se = term_so = ((void*)0);


  if (isatty(STDOUT_FILENO) && tgetent(tbuf, ((void*)0)) == 1) {
   b = cbuf;
   term_so = tgetstr("so", &b);
   term_se = tgetstr("se", &b);
  }

  first = 0;
 }





 if (flag_nohighlight) {
  memcpy(dst, src, len);
  return;
 }




 if (term_so != ((void*)0) && term_se != ((void*)0)) {

  dst[0] = ' ';
  dst++;

  memcpy(dst, term_so, strlen(term_so));
  dst += strlen(term_so);

  len--;
  src++;
  memcpy(dst, src, len);
  dst += len;

  memcpy(dst, term_se, strlen(term_se));
  *extralen = strlen(term_so) + strlen(term_se);
  return;
 }




 *extralen = 0;

 src++;
 len--;

 dst[0] = ' ';
 dst++;
 while (len > 0) {

  memcpy(dst, "_\010", 2);
  dst += 2;
  *extralen += 2;

  *dst++ = *src++;
  len--;
 }
 return;
}
