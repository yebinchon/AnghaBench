
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int toupper (char) ;

__attribute__((used)) static void
pmc_soft_namecleanup(char *name)
{
 char *p, *q;

 p = q = name;

 for ( ; *p == '_' ; p++)
  ;
 for ( ; *p ; p++) {
  if (*p == '_' && (*(p + 1) == '_' || *(p + 1) == '\0'))
   continue;
  else
   *q++ = toupper(*p);
 }
 *q = '\0';
}
