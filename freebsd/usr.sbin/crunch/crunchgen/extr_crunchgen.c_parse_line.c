
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

void
parse_line(char *pline, int *fc, char **fv, int nf)
{
 char *p;

 p = pline;
 *fc = 0;

 while (1) {
  while (isspace((unsigned char)*p))
   p++;

  if (*p == '\0' || *p == '#')
   break;

  if (*fc < nf)
   fv[(*fc)++] = p;

  while (*p && !isspace((unsigned char)*p) && *p != '#')
   p++;

  if (*p == '\0' || *p == '#')
   break;

  *p++ = '\0';
 }

 if (*p)
  *p = '\0';
}
