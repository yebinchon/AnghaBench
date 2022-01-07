
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct parallel_fetch_state {int result; int member_3; int member_2; struct string_list* member_1; int member_0; } ;
struct argv_array {int argv; } ;
struct TYPE_2__ {char* string; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int RUN_GIT_CMD ;
 char* _ (char*) ;
 int add_options_to_argv (struct argv_array*) ;
 int append ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_pop (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char const*) ;
 int argv_array_pushl (struct argv_array*,char*,char*,char*,int *) ;
 int dry_run ;
 int error (char*,char const*) ;
 int fetch_failed_to_start ;
 int fetch_finished ;
 int fetch_next_remote ;
 int printf (char*,char const*) ;
 scalar_t__ run_command_v_opt (int ,int ) ;
 int run_processes_parallel_tr2 (int,int *,int *,int *,struct parallel_fetch_state*,char*,char*) ;
 int truncate_fetch_head () ;
 scalar_t__ verbosity ;

__attribute__((used)) static int fetch_multiple(struct string_list *list, int max_children)
{
 int i, result = 0;
 struct argv_array argv = ARGV_ARRAY_INIT;

 if (!append && !dry_run) {
  int errcode = truncate_fetch_head();
  if (errcode)
   return errcode;
 }

 argv_array_pushl(&argv, "fetch", "--append", "--no-auto-gc", ((void*)0));
 add_options_to_argv(&argv);

 if (max_children != 1 && list->nr != 1) {
  struct parallel_fetch_state state = { argv.argv, list, 0, 0 };

  argv_array_push(&argv, "--end-of-options");
  result = run_processes_parallel_tr2(max_children,
          &fetch_next_remote,
          &fetch_failed_to_start,
          &fetch_finished,
          &state,
          "fetch", "parallel/fetch");

  if (!result)
   result = state.result;
 } else
  for (i = 0; i < list->nr; i++) {
   const char *name = list->items[i].string;
   argv_array_push(&argv, name);
   if (verbosity >= 0)
    printf(_("Fetching %s\n"), name);
   if (run_command_v_opt(argv.argv, RUN_GIT_CMD)) {
    error(_("Could not fetch %s"), name);
    result = 1;
   }
   argv_array_pop(&argv);
  }

 argv_array_clear(&argv);
 return !!result;
}
