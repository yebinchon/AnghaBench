
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct checkout_opts {char* new_branch; int count_checkout_paths; scalar_t__ accept_pathspec; int prefix; int source_tree; int quiet; } ;
struct branch_info {int dummy; } ;


 int _ (char*) ;
 scalar_t__ check_filename (int ,char const*) ;
 int die (int ,...) ;
 scalar_t__ get_oid_mb (char const*,struct object_id*) ;
 int no_wildcard (char const*) ;
 int setup_new_branch_info_and_source_tree (struct branch_info*,struct checkout_opts*,struct object_id*,char const*) ;
 int strcmp (char const*,char*) ;
 char* unique_tracking_name (char const*,struct object_id*,int*) ;
 int verify_non_filename (int ,char const*) ;

__attribute__((used)) static int parse_branchname_arg(int argc, const char **argv,
    int dwim_new_local_branch_ok,
    struct branch_info *new_branch_info,
    struct checkout_opts *opts,
    struct object_id *rev,
    int *dwim_remotes_matched)
{
 const char **new_branch = &opts->new_branch;
 int argcount = 0;
 const char *arg;
 int dash_dash_pos;
 int has_dash_dash = 0;
 int i;
 if (!argc)
  return 0;

 if (!opts->accept_pathspec) {
  if (argc > 1)
   die(_("only one reference expected"));
  has_dash_dash = 1;
 }

 arg = argv[0];
 dash_dash_pos = -1;
 for (i = 0; i < argc; i++) {
  if (opts->accept_pathspec && !strcmp(argv[i], "--")) {
   dash_dash_pos = i;
   break;
  }
 }
 if (dash_dash_pos == 0)
  return 1;
 else if (dash_dash_pos == 1)
  has_dash_dash = 1;
 else if (dash_dash_pos >= 2)
  die(_("only one reference expected, %d given."), dash_dash_pos);
 opts->count_checkout_paths = !opts->quiet && !has_dash_dash;

 if (!strcmp(arg, "-"))
  arg = "@{-1}";

 if (get_oid_mb(arg, rev)) {
  int recover_with_dwim = dwim_new_local_branch_ok;

  int could_be_checkout_paths = !has_dash_dash &&
   check_filename(opts->prefix, arg);

  if (!has_dash_dash && !no_wildcard(arg))
   recover_with_dwim = 0;





  if (!(argc == 1 && !has_dash_dash) &&
      !(argc == 2 && has_dash_dash) &&
      opts->accept_pathspec)
   recover_with_dwim = 0;

  if (recover_with_dwim) {
   const char *remote = unique_tracking_name(arg, rev,
          dwim_remotes_matched);
   if (remote) {
    if (could_be_checkout_paths)
     die(_("'%s' could be both a local file and a tracking branch.\n"
           "Please use -- (and optionally --no-guess) to disambiguate"),
         arg);
    *new_branch = arg;
    arg = remote;

   } else {
    recover_with_dwim = 0;
   }
  }

  if (!recover_with_dwim) {
   if (has_dash_dash)
    die(_("invalid reference: %s"), arg);
   return argcount;
  }
 }


 argcount++;
 argv++;
 argc--;

 setup_new_branch_info_and_source_tree(new_branch_info, opts, rev, arg);

 if (!opts->source_tree)
  die(_("reference is not a tree: %s"), arg);

 if (!has_dash_dash) {






  if (argc)
   verify_non_filename(opts->prefix, arg);
 } else if (opts->accept_pathspec) {
  argcount++;
  argv++;
  argc--;
 }

 return argcount;
}
