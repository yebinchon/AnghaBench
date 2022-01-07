
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;


 int git_path_squash_msg (struct repository*) ;
 int remove_merge_branch_state (struct repository*) ;
 int sequencer_post_commit_cleanup (struct repository*,int) ;
 int unlink (int ) ;

void remove_branch_state(struct repository *r, int verbose)
{
 sequencer_post_commit_cleanup(r, verbose);
 unlink(git_path_squash_msg(r));
 remove_merge_branch_state(r);
}
