
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_format; int pathspec; } ;
struct rev_info {int max_count; int combine_merges; int dense_combined_merges; TYPE_1__ diffopt; } ;


 int DIFF_FORMAT_PATCH ;
 unsigned int DIFF_SILENT_ON_REMOVED ;
 int _ (char*) ;
 int builtin_diff_usage ;
 int error (int ,char const*) ;
 int perror (char*) ;
 scalar_t__ read_cache_preload (int *) ;
 int run_diff_files (struct rev_info*,unsigned int) ;
 int setup_work_tree () ;
 int strcmp (char const*,char*) ;
 int usage (int ) ;

__attribute__((used)) static int builtin_diff_files(struct rev_info *revs, int argc, const char **argv)
{
 unsigned int options = 0;

 while (1 < argc && argv[1][0] == '-') {
  if (!strcmp(argv[1], "--base"))
   revs->max_count = 1;
  else if (!strcmp(argv[1], "--ours"))
   revs->max_count = 2;
  else if (!strcmp(argv[1], "--theirs"))
   revs->max_count = 3;
  else if (!strcmp(argv[1], "-q"))
   options |= DIFF_SILENT_ON_REMOVED;
  else if (!strcmp(argv[1], "-h"))
   usage(builtin_diff_usage);
  else
   return error(_("invalid option: %s"), argv[1]);
  argv++; argc--;
 }







 if (revs->max_count == -1 && !revs->combine_merges &&
     (revs->diffopt.output_format & DIFF_FORMAT_PATCH))
  revs->combine_merges = revs->dense_combined_merges = 1;

 setup_work_tree();
 if (read_cache_preload(&revs->diffopt.pathspec) < 0) {
  perror("read_cache_preload");
  return -1;
 }
 return run_diff_files(revs, options);
}
