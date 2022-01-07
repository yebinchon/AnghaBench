
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source {int dummy; } ;


 int BUFSIZ ;
 int EOF ;
 char* bstrdup (char*) ;
 int src_getcharstring (struct source*) ;

__attribute__((used)) static char *
src_getlinestring(struct source *src)
{
 char buf[BUFSIZ];
 int i, ch;

 i = 0;
 while (i < BUFSIZ-1) {
  ch = src_getcharstring(src);
  if (ch == EOF)
   break;
  buf[i++] = ch;
  if (ch == '\n')
   break;
 }
 buf[i] = '\0';
 return (bstrdup(buf));
}
