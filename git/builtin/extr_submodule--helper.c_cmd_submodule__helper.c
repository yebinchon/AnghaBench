
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cmd; int option; int (* fn ) (int,char const**,char const*) ;} ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SUPPORT_SUPER_PREFIX ;
 int _ (char*) ;
 TYPE_1__* commands ;
 int die (int ,char const*) ;
 scalar_t__ get_super_prefix () ;
 int strcmp (char const*,char*) ;
 int stub1 (int,char const**,char const*) ;
 int usage (char*) ;

int cmd_submodule__helper(int argc, const char **argv, const char *prefix)
{
 int i;
 if (argc < 2 || !strcmp(argv[1], "-h"))
  usage("git submodule--helper <command>");

 for (i = 0; i < ARRAY_SIZE(commands); i++) {
  if (!strcmp(argv[1], commands[i].cmd)) {
   if (get_super_prefix() &&
       !(commands[i].option & SUPPORT_SUPER_PREFIX))
    die(_("%s doesn't support --super-prefix"),
        commands[i].cmd);
   return commands[i].fn(argc - 1, argv + 1, prefix);
  }
 }

 die(_("'%s' is not a valid submodule--helper "
       "subcommand"), argv[1]);
}
