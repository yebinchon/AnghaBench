
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct grep_opt {struct string_list* output_priv; } ;
struct child_process {char const* dir; int use_shell; int args; } ;
struct TYPE_2__ {int string; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_push (int *,int ) ;
 int exit (int) ;
 int run_command (struct child_process*) ;

__attribute__((used)) static void run_pager(struct grep_opt *opt, const char *prefix)
{
 struct string_list *path_list = opt->output_priv;
 struct child_process child = CHILD_PROCESS_INIT;
 int i, status;

 for (i = 0; i < path_list->nr; i++)
  argv_array_push(&child.args, path_list->items[i].string);
 child.dir = prefix;
 child.use_shell = 1;

 status = run_command(&child);
 if (status)
  exit(status);
}
