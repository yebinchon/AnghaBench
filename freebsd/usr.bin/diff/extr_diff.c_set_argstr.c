
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diffargs ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcat (int ,char*,size_t) ;
 int strlcpy (int ,char*,size_t) ;
 int xmalloc (size_t) ;

void
set_argstr(char **av, char **ave)
{
 size_t argsize;
 char **ap;

 argsize = 4 + *ave - *av + 1;
 diffargs = xmalloc(argsize);
 strlcpy(diffargs, "diff", argsize);
 for (ap = av + 1; ap < ave; ap++) {
  if (strcmp(*ap, "--") != 0) {
   strlcat(diffargs, " ", argsize);
   strlcat(diffargs, *ap, argsize);
  }
 }
}
