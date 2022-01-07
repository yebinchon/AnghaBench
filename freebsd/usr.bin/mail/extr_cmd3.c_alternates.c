
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** altnames ;
 int argcount (char**) ;
 void* calloc (unsigned int,int) ;
 int err (int,char*) ;
 int free (char**) ;
 int printf (char*,...) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

int
alternates(char **namelist)
{
 int c;
 char **ap, **ap2, *cp;

 c = argcount(namelist) + 1;
 if (c == 1) {
  if (altnames == 0)
   return (0);
  for (ap = altnames; *ap != ((void*)0); ap++)
   printf("%s ", *ap);
  printf("\n");
  return (0);
 }
 if (altnames != 0)
  (void)free(altnames);
 if ((altnames = calloc((unsigned)c, sizeof(char *))) == ((void*)0))
  err(1, "Out of memory");
 for (ap = namelist, ap2 = altnames; *ap != ((void*)0); ap++, ap2++) {
  cp = calloc((unsigned)strlen(*ap) + 1, sizeof(char));
  strcpy(cp, *ap);
  *ap2 = cp;
 }
 *ap2 = 0;
 return (0);
}
