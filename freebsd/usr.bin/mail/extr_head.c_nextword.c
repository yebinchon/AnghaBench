
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
nextword(char *wp, char *wbuf)
{
 int c;

 if (wp == ((void*)0)) {
  *wbuf = '\0';
  return (((void*)0));
 }
 while ((c = *wp++) != '\0' && c != ' ' && c != '\t') {
  *wbuf++ = c;
  if (c == '"') {
    while ((c = *wp++) != '\0' && c != '"')
     *wbuf++ = c;
    if (c == '"')
     *wbuf++ = c;
   else
    wp--;
   }
 }
 *wbuf = '\0';
 for (; c == ' ' || c == '\t'; c = *wp++)
  ;
 if (c == '\0')
  return (((void*)0));
 return (wp - 1);
}
