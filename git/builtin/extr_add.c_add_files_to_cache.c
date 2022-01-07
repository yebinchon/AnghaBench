
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct update_callback_data {int flags; int add_errors; } ;
struct TYPE_3__ {int override_submodule_config; } ;
struct TYPE_4__ {TYPE_1__ flags; struct update_callback_data* format_callback_data; int format_callback; int output_format; } ;
struct rev_info {int prune_data; scalar_t__ max_count; TYPE_2__ diffopt; } ;
struct pathspec {int dummy; } ;
typedef int data ;


 int DIFF_FORMAT_CALLBACK ;
 int DIFF_RACY_IS_MODIFIED ;
 int clear_pathspec (int *) ;
 int copy_pathspec (int *,struct pathspec const*) ;
 int memset (struct update_callback_data*,int ,int) ;
 int repo_init_revisions (int ,struct rev_info*,char const*) ;
 int run_diff_files (struct rev_info*,int ) ;
 int setup_revisions (int ,int *,struct rev_info*,int *) ;
 int the_repository ;
 int update_callback ;

int add_files_to_cache(const char *prefix,
         const struct pathspec *pathspec, int flags)
{
 struct update_callback_data data;
 struct rev_info rev;

 memset(&data, 0, sizeof(data));
 data.flags = flags;

 repo_init_revisions(the_repository, &rev, prefix);
 setup_revisions(0, ((void*)0), &rev, ((void*)0));
 if (pathspec)
  copy_pathspec(&rev.prune_data, pathspec);
 rev.diffopt.output_format = DIFF_FORMAT_CALLBACK;
 rev.diffopt.format_callback = update_callback;
 rev.diffopt.format_callback_data = &data;
 rev.diffopt.flags.override_submodule_config = 1;
 rev.max_count = 0;
 run_diff_files(&rev, DIFF_RACY_IS_MODIFIED);
 clear_pathspec(&rev.prune_data);
 return !!data.add_errors;
}
