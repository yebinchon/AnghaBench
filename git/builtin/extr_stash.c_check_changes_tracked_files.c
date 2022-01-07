
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int quick; int ignore_submodules; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;
struct rev_info {int prune_data; TYPE_2__ diffopt; int pending; scalar_t__ abbrev; } ;
struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;


 int add_head_to_pending (struct rev_info*) ;
 int clear_pathspec (int *) ;
 int copy_pathspec (int *,struct pathspec const*) ;
 scalar_t__ diff_result_code (TYPE_2__*,int) ;
 int diff_setup_done (TYPE_2__*) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 int init_revisions (struct rev_info*,int *) ;
 int object_array_clear (int *) ;
 scalar_t__ read_cache () ;
 int run_diff_files (struct rev_info*,int ) ;
 int run_diff_index (struct rev_info*,int) ;

__attribute__((used)) static int check_changes_tracked_files(const struct pathspec *ps)
{
 int result;
 struct rev_info rev;
 struct object_id dummy;
 int ret = 0;


 if (get_oid("HEAD", &dummy))
  return -1;

 if (read_cache() < 0)
  return -1;

 init_revisions(&rev, ((void*)0));
 copy_pathspec(&rev.prune_data, ps);

 rev.diffopt.flags.quick = 1;
 rev.diffopt.flags.ignore_submodules = 1;
 rev.abbrev = 0;

 add_head_to_pending(&rev);
 diff_setup_done(&rev.diffopt);

 result = run_diff_index(&rev, 1);
 if (diff_result_code(&rev.diffopt, result)) {
  ret = 1;
  goto done;
 }

 object_array_clear(&rev.pending);
 result = run_diff_files(&rev, 0);
 if (diff_result_code(&rev.diffopt, result)) {
  ret = 1;
  goto done;
 }

done:
 clear_pathspec(&rev.prune_data);
 return ret;
}
