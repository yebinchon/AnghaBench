
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pathspec; scalar_t__ output_format; } ;
struct TYPE_3__ {int nr; } ;
struct rev_info {int max_count; int min_age; int max_age; TYPE_2__ diffopt; TYPE_1__ pending; scalar_t__ abbrev; } ;


 scalar_t__ DIFF_FORMAT_RAW ;
 int UNLEAK (struct rev_info) ;
 int diff_cache_usage ;
 int diff_result_code (TYPE_2__*,int) ;
 int git_config (int ,int *) ;
 int git_diff_basic_config ;
 int perror (char*) ;
 int precompose_argv (int,char const**) ;
 scalar_t__ read_cache () ;
 scalar_t__ read_cache_preload (int *) ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int run_diff_index (struct rev_info*,int) ;
 int setup_revisions (int,char const**,struct rev_info*,int *) ;
 int setup_work_tree () ;
 int strcmp (char const*,char*) ;
 int the_repository ;
 int usage (int ) ;

int cmd_diff_index(int argc, const char **argv, const char *prefix)
{
 struct rev_info rev;
 int cached = 0;
 int i;
 int result;

 if (argc == 2 && !strcmp(argv[1], "-h"))
  usage(diff_cache_usage);

 git_config(git_diff_basic_config, ((void*)0));
 repo_init_revisions(the_repository, &rev, prefix);
 rev.abbrev = 0;
 precompose_argv(argc, argv);

 argc = setup_revisions(argc, argv, &rev, ((void*)0));
 for (i = 1; i < argc; i++) {
  const char *arg = argv[i];

  if (!strcmp(arg, "--cached"))
   cached = 1;
  else
   usage(diff_cache_usage);
 }
 if (!rev.diffopt.output_format)
  rev.diffopt.output_format = DIFF_FORMAT_RAW;





 if (rev.pending.nr != 1 ||
     rev.max_count != -1 || rev.min_age != -1 || rev.max_age != -1)
  usage(diff_cache_usage);
 if (!cached) {
  setup_work_tree();
  if (read_cache_preload(&rev.diffopt.pathspec) < 0) {
   perror("read_cache_preload");
   return -1;
  }
 } else if (read_cache() < 0) {
  perror("read_cache");
  return -1;
 }
 result = run_diff_index(&rev, cached);
 UNLEAK(rev);
 return diff_result_code(&rev.diffopt, result);
}
