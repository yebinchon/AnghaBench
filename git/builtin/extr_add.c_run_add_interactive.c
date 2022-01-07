
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int nr; TYPE_1__* items; } ;
struct argv_array {int argv; } ;
struct TYPE_2__ {char* original; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int RUN_GIT_CMD ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char const*) ;
 int run_command_v_opt (int ,int ) ;

int run_add_interactive(const char *revision, const char *patch_mode,
   const struct pathspec *pathspec)
{
 int status, i;
 struct argv_array argv = ARGV_ARRAY_INIT;

 argv_array_push(&argv, "add--interactive");
 if (patch_mode)
  argv_array_push(&argv, patch_mode);
 if (revision)
  argv_array_push(&argv, revision);
 argv_array_push(&argv, "--");
 for (i = 0; i < pathspec->nr; i++)

  argv_array_push(&argv, pathspec->items[i].original);

 status = run_command_v_opt(argv.argv, RUN_GIT_CMD);
 argv_array_clear(&argv);
 return status;
}
