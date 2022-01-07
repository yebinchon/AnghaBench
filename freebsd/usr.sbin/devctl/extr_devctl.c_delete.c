
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_usage () ;
 scalar_t__ devctl_delete (char*,int) ;
 int err (int,char*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;

__attribute__((used)) static int
delete(int ac, char **av)
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
   delete_usage();
  }
 ac -= optind;
 av += optind;

 if (ac != 1)
  delete_usage();
 if (devctl_delete(av[0], force) < 0)
  err(1, "Failed to delete %s", av[0]);
 return (0);
}
