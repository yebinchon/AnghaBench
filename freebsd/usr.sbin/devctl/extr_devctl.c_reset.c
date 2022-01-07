
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ devctl_reset (char*,int) ;
 int err (int,char*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int reset_usage () ;

__attribute__((used)) static int
reset(int ac, char **av)
{
 bool detach_drv;
 int ch;

 detach_drv = 0;
 while ((ch = getopt(ac, av, "d")) != -1)
  switch (ch) {
  case 'd':
   detach_drv = 1;
   break;
  default:
   reset_usage();
  }
 ac -= optind;
 av += optind;

 if (ac != 1)
  reset_usage();
 if (devctl_reset(av[0], detach_drv) < 0)
  err(1, "Failed to reset %s", av[0]);
 return (0);
}
