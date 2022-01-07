
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ devctl_disable (char*,int) ;
 int disable_usage () ;
 int err (int,char*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;

__attribute__((used)) static int
disable(int ac, char **av)
{
 bool force;
 int ch;

 force = 0;
 while ((ch = getopt(ac, av, "f")) != -1)
  switch (ch) {
  case 'f':
   force = 1;
   break;
  default:
   disable_usage();
  }
 ac -= optind;
 av += optind;

 if (ac != 1)
  disable_usage();
 if (devctl_disable(av[0], force) < 0)
  err(1, "Failed to disable %s", av[0]);
 return (0);
}
