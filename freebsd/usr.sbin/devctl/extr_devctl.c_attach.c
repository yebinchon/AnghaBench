
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ devctl_attach (char*) ;
 int err (int,char*,char*) ;
 int usage () ;

__attribute__((used)) static int
attach(int ac, char **av)
{

 if (ac != 2)
  usage();
 if (devctl_attach(av[1]) < 0)
  err(1, "Failed to attach %s", av[1]);
 return (0);
}
