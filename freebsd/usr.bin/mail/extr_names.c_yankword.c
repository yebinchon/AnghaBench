
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,char) ;

char *
yankword(char *ap, char *wbuf)
{
 char *cp, *cp2;

 cp = ap;
 for (;;) {
  if (*cp == '\0')
   return (((void*)0));
  if (*cp == '(') {
   int nesting = 0;

   while (*cp != '\0') {
    switch (*cp++) {
    case '(':
     nesting++;
     break;
    case ')':
     --nesting;
     break;
    }
    if (nesting <= 0)
     break;
   }
  } else if (*cp == ' ' || *cp == '\t' || *cp == ',')
   cp++;
  else
   break;
 }
 if (*cp == '<')
  for (cp2 = wbuf; *cp && (*cp2++ = *cp++) != '>';)
   ;
 else
  for (cp2 = wbuf; *cp != '\0' && strchr(" \t,(", *cp) == ((void*)0);
      *cp2++ = *cp++)
   ;
 *cp2 = '\0';
 return (cp);
}
