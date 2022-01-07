
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct setup_revision_opt {int tweak; } ;
struct TYPE_9__ {int needed_rename_limit; int degraded_cc_to_c; int setup; scalar_t__ detect_rename; } ;
struct TYPE_7__ {int nr; TYPE_1__* objects; } ;
struct rev_info {int diff; int disable_stdin; TYPE_4__ diffopt; TYPE_2__ pending; scalar_t__ abbrev; } ;
struct object_id {int dummy; } ;
struct object {int flags; int oid; } ;
typedef int s_r_opt ;
typedef int line ;
struct TYPE_8__ {int cache; } ;
struct TYPE_6__ {struct object* item; } ;


 int DIFF_SETUP_USE_SIZE_CACHE ;
 int SWAP (struct object*,struct object*) ;
 int UNINTERESTING ;
 int _ (char*) ;
 int die (int ) ;
 int diff_result_code (TYPE_4__*,int ) ;
 int diff_tree_commit_oid (int *) ;
 int diff_tree_oid (int *,int *,char*,TYPE_4__*) ;
 int diff_tree_stdin (char*) ;
 int diff_tree_tweak_rev ;
 int diff_tree_usage ;
 int fflush (int ) ;
 scalar_t__ fgets (char*,int,int ) ;
 int fputs (char*,int ) ;
 scalar_t__ get_oid_hex (char*,struct object_id*) ;
 int git_config (int ,int *) ;
 int git_diff_basic_config ;
 int log_tree_diff_flush (struct rev_info*) ;
 struct rev_info log_tree_opt ;
 int memset (struct setup_revision_opt*,int ,int) ;
 int precompose_argv (int,char const**) ;
 scalar_t__ read_cache () ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int repo_read_index (int ) ;
 int setup_revisions (int,char const**,struct rev_info*,struct setup_revision_opt*) ;
 int stdin ;
 int stdout ;
 int strcmp (char const*,char*) ;
 TYPE_3__ the_index ;
 int the_repository ;
 int usage (int ) ;

int cmd_diff_tree(int argc, const char **argv, const char *prefix)
{
 char line[1000];
 struct object *tree1, *tree2;
 static struct rev_info *opt = &log_tree_opt;
 struct setup_revision_opt s_r_opt;
 int read_stdin = 0;

 if (argc == 2 && !strcmp(argv[1], "-h"))
  usage(diff_tree_usage);

 git_config(git_diff_basic_config, ((void*)0));
 repo_init_revisions(the_repository, opt, prefix);
 if (read_cache() < 0)
  die(_("index file corrupt"));
 opt->abbrev = 0;
 opt->diff = 1;
 opt->disable_stdin = 1;
 memset(&s_r_opt, 0, sizeof(s_r_opt));
 s_r_opt.tweak = diff_tree_tweak_rev;

 precompose_argv(argc, argv);
 argc = setup_revisions(argc, argv, opt, &s_r_opt);

 while (--argc > 0) {
  const char *arg = *++argv;

  if (!strcmp(arg, "--stdin")) {
   read_stdin = 1;
   continue;
  }
  usage(diff_tree_usage);
 }
 switch (opt->pending.nr) {
 case 0:
  if (!read_stdin)
   usage(diff_tree_usage);
  break;
 case 1:
  tree1 = opt->pending.objects[0].item;
  diff_tree_commit_oid(&tree1->oid);
  break;
 case 2:
  tree1 = opt->pending.objects[0].item;
  tree2 = opt->pending.objects[1].item;
  if (tree2->flags & UNINTERESTING) {
   SWAP(tree2, tree1);
  }
  diff_tree_oid(&tree1->oid, &tree2->oid, "", &opt->diffopt);
  log_tree_diff_flush(opt);
  break;
 }

 if (read_stdin) {
  int saved_nrl = 0;
  int saved_dcctc = 0;

  if (opt->diffopt.detect_rename) {
   if (!the_index.cache)
    repo_read_index(the_repository);
   opt->diffopt.setup |= DIFF_SETUP_USE_SIZE_CACHE;
  }
  while (fgets(line, sizeof(line), stdin)) {
   struct object_id oid;

   if (get_oid_hex(line, &oid)) {
    fputs(line, stdout);
    fflush(stdout);
   }
   else {
    diff_tree_stdin(line);
    if (saved_nrl < opt->diffopt.needed_rename_limit)
     saved_nrl = opt->diffopt.needed_rename_limit;
    if (opt->diffopt.degraded_cc_to_c)
     saved_dcctc = 1;
   }
  }
  opt->diffopt.degraded_cc_to_c = saved_dcctc;
  opt->diffopt.needed_rename_limit = saved_nrl;
 }

 return diff_result_code(&opt->diffopt, 0);
}
