
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ idx ;
 scalar_t__ isidchr (char) ;
 int iskw (char*) ;
 int margin ;
 int nokeyw ;
 int printf (char*,...) ;
 int ps (char*) ;
 int putcp (unsigned char) ;
 char* s_start ;
 int tabs (char*,char*) ;

__attribute__((used)) static void
putKcp(char *start, char *end, bool force)
{
    int i;
    int xfld = 0;

    while (start <= end) {
 if (idx) {
     if (*start == ' ' || *start == '\t') {
  if (xfld == 0)
      printf("\001");
  printf("\t");
  xfld = 1;
  while (*start == ' ' || *start == '\t')
      start++;
  continue;
     }
 }


 if (*start == '\t') {
     while (*start == '\t')
  start++;
     i = tabs(s_start, start) - margin / 8;
     printf("\\h'|%dn'", i * 10 + 1 - margin % 8);
     continue;
 }

 if (!nokeyw && !force)
     if ((*start == '#' || isidchr(*start))
     && (start == s_start || !isidchr(start[-1]))) {
  i = iskw(start);
  if (i > 0) {
      ps("\\*(+K");
      do
   putcp((unsigned char)*start++);
      while (--i > 0);
      ps("\\*(-K");
      continue;
  }
     }

 putcp((unsigned char)*start++);
    }
}
