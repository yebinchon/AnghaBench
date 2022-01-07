
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int whence; } ;


 int FROM_CHERRY_PICK ;
 int FROM_COMMIT ;
 int FROM_MERGE ;
 scalar_t__ file_exists (int ) ;
 int git_path_cherry_pick_head (int ) ;
 int git_path_merge_head (int ) ;
 int git_path_seq_dir () ;
 int sequencer_in_use ;
 int the_repository ;
 int whence ;

__attribute__((used)) static void determine_whence(struct wt_status *s)
{
 if (file_exists(git_path_merge_head(the_repository)))
  whence = FROM_MERGE;
 else if (file_exists(git_path_cherry_pick_head(the_repository))) {
  whence = FROM_CHERRY_PICK;
  if (file_exists(git_path_seq_dir()))
   sequencer_in_use = 1;
 }
 else
  whence = FROM_COMMIT;
 if (s)
  s->whence = whence;
}
