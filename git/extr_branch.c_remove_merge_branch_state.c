
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;


 int git_path_merge_head (struct repository*) ;
 int git_path_merge_mode (struct repository*) ;
 int git_path_merge_msg (struct repository*) ;
 int git_path_merge_rr (struct repository*) ;
 int unlink (int ) ;

void remove_merge_branch_state(struct repository *r)
{
 unlink(git_path_merge_head(r));
 unlink(git_path_merge_rr(r));
 unlink(git_path_merge_msg(r));
 unlink(git_path_merge_mode(r));
}
