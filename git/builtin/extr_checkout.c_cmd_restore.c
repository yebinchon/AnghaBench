
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
struct checkout_opts {int checkout_index; int checkout_worktree; int ignore_unmerged; int overlay_mode; int accept_pathspec; char* ignore_unmerged_opt; scalar_t__ empty_pathspec_ok; scalar_t__ accept_ref; int from_treeish; } ;
typedef int opts ;


 int FREE_AND_NULL (struct option*) ;
 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_STRING (char,char*,int *,char*,int ) ;
 struct option* add_checkout_path_options (struct checkout_opts*,struct option*) ;
 struct option* add_common_options (struct checkout_opts*,struct option*) ;
 int checkout_main (int,char const**,char const*,struct checkout_opts*,struct option*,int ) ;
 int memset (struct checkout_opts*,int ,int) ;
 struct option* parse_options_dup (struct option*) ;
 int restore_usage ;

int cmd_restore(int argc, const char **argv, const char *prefix)
{
 struct checkout_opts opts;
 struct option *options;
 struct option restore_options[] = {
  OPT_STRING('s', "source", &opts.from_treeish, "<tree-ish>",
      N_("which tree-ish to checkout from")),
  OPT_BOOL('S', "staged", &opts.checkout_index,
      N_("restore the index")),
  OPT_BOOL('W', "worktree", &opts.checkout_worktree,
      N_("restore the working tree (default)")),
  OPT_BOOL(0, "ignore-unmerged", &opts.ignore_unmerged,
    N_("ignore unmerged entries")),
  OPT_BOOL(0, "overlay", &opts.overlay_mode, N_("use overlay mode")),
  OPT_END()
 };
 int ret;

 memset(&opts, 0, sizeof(opts));
 opts.accept_ref = 0;
 opts.accept_pathspec = 1;
 opts.empty_pathspec_ok = 0;
 opts.overlay_mode = 0;
 opts.checkout_index = -1;
 opts.checkout_worktree = -2;
 opts.ignore_unmerged_opt = "--ignore-unmerged";

 options = parse_options_dup(restore_options);
 options = add_common_options(&opts, options);
 options = add_checkout_path_options(&opts, options);

 ret = checkout_main(argc, argv, prefix, &opts,
       options, restore_usage);
 FREE_AND_NULL(options);
 return ret;
}
