
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int detach_usage () ;
 scalar_t__ devctl_detach (char*,int) ;
 int err (int,char*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;

__attribute__((used)) static int
detach(int ac, char **av)
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
   detach_usage();
  }
 ac -= optind;
 av += optind;

 if (ac != 1)
  detach_usage();
 if (devctl_detach(av[0], force) < 0)
  err(1, "Failed to detach %s", av[0]);
 return (0);
}
