
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
interp(char *s)
{
 static char buf[256];
 char *p = buf, c, *q;

 while ((c = *s++)) {
  for (q = "\nn\rr\tt\ff\033E\bb"; *q; q++)
   if (*q++ == c) {
    *p++ = '\\'; *p++ = *q;
    goto next;
   }
  if (c < 040) {
   *p++ = '^'; *p++ = c + 'A'-1;
  } else if (c == 0177) {
   *p++ = '^'; *p++ = '?';
  } else
   *p++ = c;
 next:
  ;
 }
 *p = '\0';
 return (buf);
}
