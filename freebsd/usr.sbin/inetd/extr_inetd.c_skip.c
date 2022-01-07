
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fconfig ;
 int getc (int ) ;
 char* nextline (int ) ;
 int ungetc (int,int ) ;

__attribute__((used)) static char *
skip(char **cpp)
{
 char *cp = *cpp;
 char *start;
 char quote = '\0';

again:
 while (*cp == ' ' || *cp == '\t')
  cp++;
 if (*cp == '\0') {
  int c;

  c = getc(fconfig);
  (void) ungetc(c, fconfig);
  if (c == ' ' || c == '\t')
   if ((cp = nextline(fconfig)))
    goto again;
  *cpp = (char *)0;
  return ((char *)0);
 }
 if (*cp == '"' || *cp == '\'')
  quote = *cp++;
 start = cp;
 if (quote)
  while (*cp && *cp != quote)
   cp++;
 else
  while (*cp && *cp != ' ' && *cp != '\t')
   cp++;
 if (*cp != '\0')
  *cp++ = '\0';
 *cpp = cp;
 return (start);
}
