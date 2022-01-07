
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,int) ;
 int revert () ;

__attribute__((used)) static char *
nextarg(int ac, char **av, int *indp, int oc, int strict)
{
 if (*indp < ac)
  return(av[(*indp)++]);

 if (strict != 0) {
  revert();
  errx(1, "option requires two arguments -- %c", oc);
 }

 return(((void*)0));
}
