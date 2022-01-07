
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ check_failed; } ;
struct TYPE_6__ {int close_file; int needed_rename_limit; int degraded_cc_to_c; int output_format; TYPE_1__ flags; int file; } ;
struct rev_info {scalar_t__ max_count; TYPE_3__ diffopt; int reflog_info; scalar_t__ early_output; } ;
struct commit {int * parents; } ;
struct TYPE_5__ {int parsed_objects; } ;


 int DIFF_FORMAT_CHECKDIFF ;
 int _ (char*) ;
 int die (int ) ;
 int diff_result_code (TYPE_3__*,int ) ;
 int fclose (int ) ;
 int finish_early_output (struct rev_info*) ;
 int free_commit_buffer (int ,struct commit*) ;
 int free_commit_list (int *) ;
 struct commit* get_revision (struct rev_info*) ;
 int log_tree_commit (struct rev_info*,struct commit*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int setup_early_output () ;
 TYPE_2__* the_repository ;

__attribute__((used)) static int cmd_log_walk(struct rev_info *rev)
{
 struct commit *commit;
 int saved_nrl = 0;
 int saved_dcctc = 0, close_file = rev->diffopt.close_file;

 if (rev->early_output)
  setup_early_output();

 if (prepare_revision_walk(rev))
  die(_("revision walk setup failed"));

 if (rev->early_output)
  finish_early_output(rev);






 rev->diffopt.close_file = 0;
 while ((commit = get_revision(rev)) != ((void*)0)) {
  if (!log_tree_commit(rev, commit) && rev->max_count >= 0)




   rev->max_count++;
  if (!rev->reflog_info) {




   free_commit_buffer(the_repository->parsed_objects,
        commit);
   free_commit_list(commit->parents);
   commit->parents = ((void*)0);
  }
  if (saved_nrl < rev->diffopt.needed_rename_limit)
   saved_nrl = rev->diffopt.needed_rename_limit;
  if (rev->diffopt.degraded_cc_to_c)
   saved_dcctc = 1;
 }
 rev->diffopt.degraded_cc_to_c = saved_dcctc;
 rev->diffopt.needed_rename_limit = saved_nrl;
 if (close_file)
  fclose(rev->diffopt.file);

 if (rev->diffopt.output_format & DIFF_FORMAT_CHECKDIFF &&
     rev->diffopt.flags.check_failed) {
  return 02;
 }
 return diff_result_code(&rev->diffopt, 0);
}
