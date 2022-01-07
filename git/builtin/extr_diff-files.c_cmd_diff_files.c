
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int output_format; int pathspec; } ;
struct TYPE_3__ {scalar_t__ nr; } ;
struct rev_info {int max_count; int min_age; int max_age; int combine_merges; int dense_combined_merges; TYPE_2__ diffopt; TYPE_1__ pending; scalar_t__ abbrev; } ;


 int DIFF_FORMAT_PATCH ;
 int DIFF_FORMAT_RAW ;
 unsigned int DIFF_SILENT_ON_REMOVED ;
 int diff_files_usage ;
 int diff_result_code (TYPE_2__*,int) ;
 int git_config (int ,int *) ;
 int git_diff_basic_config ;
 int perror (char*) ;
 int precompose_argv (int,char const**) ;
 scalar_t__ read_cache_preload (int *) ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int run_diff_files (struct rev_info*,unsigned int) ;
 int setup_revisions (int,char const**,struct rev_info*,int *) ;
 int strcmp (char const*,char*) ;
 int the_repository ;
 int usage (int ) ;

int cmd_diff_files(int argc, const char **argv, const char *prefix)
{
 struct rev_info rev;
 int result;
 unsigned options = 0;

 if (argc == 2 && !strcmp(argv[1], "-h"))
  usage(diff_files_usage);

 git_config(git_diff_basic_config, ((void*)0));
 repo_init_revisions(the_repository, &rev, prefix);
 rev.abbrev = 0;
 precompose_argv(argc, argv);

 argc = setup_revisions(argc, argv, &rev, ((void*)0));
 while (1 < argc && argv[1][0] == '-') {
  if (!strcmp(argv[1], "--base"))
   rev.max_count = 1;
  else if (!strcmp(argv[1], "--ours"))
   rev.max_count = 2;
  else if (!strcmp(argv[1], "--theirs"))
   rev.max_count = 3;
  else if (!strcmp(argv[1], "-q"))
   options |= DIFF_SILENT_ON_REMOVED;
  else
   usage(diff_files_usage);
  argv++; argc--;
 }
 if (!rev.diffopt.output_format)
  rev.diffopt.output_format = DIFF_FORMAT_RAW;






 if (rev.pending.nr ||
     rev.min_age != -1 || rev.max_age != -1 ||
     3 < rev.max_count)
  usage(diff_files_usage);






 if (rev.max_count == -1 && !rev.combine_merges &&
     (rev.diffopt.output_format & DIFF_FORMAT_PATCH))
  rev.combine_merges = rev.dense_combined_merges = 1;

 if (read_cache_preload(&rev.diffopt.pathspec) < 0) {
  perror("read_cache_preload");
  return -1;
 }
 result = run_diff_files(&rev, options);
 return diff_result_code(&rev.diffopt, result);
}
