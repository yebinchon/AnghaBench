
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_options {char* subtree_shift; int show_rename_progress; char const* branch1; int branch2; int renormalize; } ;
struct lock_file {int dummy; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int COMMIT_LOCK ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int REFRESH_QUIET ;
 int SKIP_IF_UNCHANGED ;
 int _ (char*) ;
 int commit_list_insert (int ,struct commit_list**) ;
 int die (int ,int ) ;
 int error (int ) ;
 int exit (int) ;
 int get_index_file () ;
 int hold_locked_index (struct lock_file*,int ) ;
 int init_merge_options (struct merge_options*,int ) ;
 int isatty (int) ;
 int merge_recursive (struct merge_options*,struct commit*,int ,struct commit_list*,struct commit**) ;
 TYPE_1__* merge_remote_util (int ) ;
 int option_renormalize ;
 scalar_t__ parse_merge_opt (struct merge_options*,int ) ;
 scalar_t__ refresh_and_write_cache (int ,int,int ) ;
 int show_progress ;
 int strcmp (char const*,char*) ;
 int the_index ;
 int the_repository ;
 int try_merge_command (int ,char const*,int,int *,struct commit_list*,char const*,struct commit_list*) ;
 scalar_t__ write_locked_index (int *,struct lock_file*,int) ;
 int * xopts ;
 int xopts_nr ;

__attribute__((used)) static int try_merge_strategy(const char *strategy, struct commit_list *common,
         struct commit_list *remoteheads,
         struct commit *head)
{
 const char *head_arg = "HEAD";

 if (refresh_and_write_cache(REFRESH_QUIET, SKIP_IF_UNCHANGED, 0) < 0)
  return error(_("Unable to write index."));

 if (!strcmp(strategy, "recursive") || !strcmp(strategy, "subtree")) {
  struct lock_file lock = LOCK_INIT;
  int clean, x;
  struct commit *result;
  struct commit_list *reversed = ((void*)0);
  struct merge_options o;
  struct commit_list *j;

  if (remoteheads->next) {
   error(_("Not handling anything other than two heads merge."));
   return 2;
  }

  init_merge_options(&o, the_repository);
  if (!strcmp(strategy, "subtree"))
   o.subtree_shift = "";

  o.renormalize = option_renormalize;
  o.show_rename_progress =
   show_progress == -1 ? isatty(2) : show_progress;

  for (x = 0; x < xopts_nr; x++)
   if (parse_merge_opt(&o, xopts[x]))
    die(_("Unknown option for merge-recursive: -X%s"), xopts[x]);

  o.branch1 = head_arg;
  o.branch2 = merge_remote_util(remoteheads->item)->name;

  for (j = common; j; j = j->next)
   commit_list_insert(j->item, &reversed);

  hold_locked_index(&lock, LOCK_DIE_ON_ERROR);
  clean = merge_recursive(&o, head,
    remoteheads->item, reversed, &result);
  if (clean < 0)
   exit(128);
  if (write_locked_index(&the_index, &lock,
           COMMIT_LOCK | SKIP_IF_UNCHANGED))
   die(_("unable to write %s"), get_index_file());
  return clean ? 0 : 1;
 } else {
  return try_merge_command(the_repository,
      strategy, xopts_nr, xopts,
      common, head_arg, remoteheads);
 }
}
