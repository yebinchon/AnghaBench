
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pathspec; } ;
struct TYPE_3__ {int nr; } ;
struct rev_info {int max_count; int min_age; int max_age; TYPE_2__ diffopt; TYPE_1__ pending; } ;


 int builtin_diff_usage ;
 int perror (char*) ;
 scalar_t__ read_cache () ;
 scalar_t__ read_cache_preload (int *) ;
 int run_diff_index (struct rev_info*,int) ;
 int setup_work_tree () ;
 int strcmp (char const*,char*) ;
 int usage (int ) ;

__attribute__((used)) static int builtin_diff_index(struct rev_info *revs,
         int argc, const char **argv)
{
 int cached = 0;
 while (1 < argc) {
  const char *arg = argv[1];
  if (!strcmp(arg, "--cached") || !strcmp(arg, "--staged"))
   cached = 1;
  else
   usage(builtin_diff_usage);
  argv++; argc--;
 }




 if (revs->pending.nr != 1 ||
     revs->max_count != -1 || revs->min_age != -1 ||
     revs->max_age != -1)
  usage(builtin_diff_usage);
 if (!cached) {
  setup_work_tree();
  if (read_cache_preload(&revs->diffopt.pathspec) < 0) {
   perror("read_cache_preload");
   return -1;
  }
 } else if (read_cache() < 0) {
  perror("read_cache");
  return -1;
 }
 return run_diff_index(revs, cached);
}
