
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpsutil_command {int (* handler ) (int,char**) ;int name; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int,char**) ;
 int warnx (char*,char*,...) ;

int
mps_table_handler(struct mpsutil_command **start, struct mpsutil_command **end,
    int ac, char **av)
{
 struct mpsutil_command **cmd;

 if (ac < 2) {
  warnx("The %s command requires a sub-command.", av[0]);
  return (EINVAL);
 }
 for (cmd = start; cmd < end; cmd++) {
  if (strcmp((*cmd)->name, av[1]) == 0)
   return ((*cmd)->handler(ac - 1, av + 1));
 }

 warnx("%s is not a valid sub-command of %s.", av[1], av[0]);
 return (ENOENT);
}
