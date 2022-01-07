
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usage () ;
 int warnx (char*,int) ;

__attribute__((used)) static char *
nextarg(int ac, char **av, int *indp, int oc)
{
 if (*indp < ac)
  return(av[(*indp)++]);
 warnx("option requires two arguments -- %c", oc);
 usage();
}
