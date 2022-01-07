
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* format_callback_data; int format_callback; int output_format; } ;
struct rev_info {TYPE_1__ diffopt; } ;


 int DIFF_FORMAT_CALLBACK ;
 int count_diff_files ;
 scalar_t__ count_unmerged_entries () ;
 int repo_init_revisions (int ,struct rev_info*,char*) ;
 int run_diff_files (struct rev_info*,int ) ;
 int setup_revisions (int ,int *,struct rev_info*,int *) ;
 int the_repository ;

__attribute__((used)) static int evaluate_result(void)
{
 int cnt = 0;
 struct rev_info rev;


 repo_init_revisions(the_repository, &rev, "");
 setup_revisions(0, ((void*)0), &rev, ((void*)0));
 rev.diffopt.output_format |=
  DIFF_FORMAT_CALLBACK;
 rev.diffopt.format_callback = count_diff_files;
 rev.diffopt.format_callback_data = &cnt;
 run_diff_files(&rev, 0);





 cnt += count_unmerged_entries();

 return cnt;
}
