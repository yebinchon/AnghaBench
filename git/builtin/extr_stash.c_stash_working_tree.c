
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct stash_info {int w_tree; int b_commit; int i_tree; } ;
struct TYPE_3__ {int pathspec; struct strbuf* format_callback_data; int format_callback; int output_format; } ;
struct rev_info {int prune_data; int pending; TYPE_1__ diffopt; } ;
struct pathspec {int dummy; } ;
struct index_state {int * member_0; } ;
struct child_process {int git_cmd; int env_array; int args; } ;
struct TYPE_4__ {int * buf; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int DIFF_FORMAT_CALLBACK ;
 struct strbuf STRBUF_INIT ;
 int UNLEAK (struct rev_info) ;
 int add_diff_to_buf ;
 int add_pending_object (struct rev_info*,int ,char*) ;
 int argv_array_pushf (int *,char*,int *) ;
 int argv_array_pushl (int *,char*,char*,char*,char*,char*,char*,int *) ;
 int clear_pathspec (int *) ;
 int copy_pathspec (int *,struct pathspec const*) ;
 int discard_index (struct index_state*) ;
 int init_revisions (struct rev_info*,int *) ;
 int object_array_clear (int *) ;
 int parse_object (int ,int *) ;
 scalar_t__ pipe_command (struct child_process*,int ,int ,int *,int ,int *,int ) ;
 scalar_t__ read_cache_preload (int *) ;
 int remove_path (int *) ;
 scalar_t__ reset_tree (int *,int ,int ) ;
 scalar_t__ run_diff_index (struct rev_info*,int ) ;
 int set_alternate_index_output (int *) ;
 TYPE_2__ stash_index_path ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 scalar_t__ write_index_as_tree (int *,struct index_state*,int *,int ,int *) ;

__attribute__((used)) static int stash_working_tree(struct stash_info *info, const struct pathspec *ps)
{
 int ret = 0;
 struct rev_info rev;
 struct child_process cp_upd_index = CHILD_PROCESS_INIT;
 struct strbuf diff_output = STRBUF_INIT;
 struct index_state istate = { ((void*)0) };

 init_revisions(&rev, ((void*)0));
 copy_pathspec(&rev.prune_data, ps);

 set_alternate_index_output(stash_index_path.buf);
 if (reset_tree(&info->i_tree, 0, 0)) {
  ret = -1;
  goto done;
 }
 set_alternate_index_output(((void*)0));

 rev.diffopt.output_format = DIFF_FORMAT_CALLBACK;
 rev.diffopt.format_callback = add_diff_to_buf;
 rev.diffopt.format_callback_data = &diff_output;

 if (read_cache_preload(&rev.diffopt.pathspec) < 0) {
  ret = -1;
  goto done;
 }

 add_pending_object(&rev, parse_object(the_repository, &info->b_commit),
      "");
 if (run_diff_index(&rev, 0)) {
  ret = -1;
  goto done;
 }

 cp_upd_index.git_cmd = 1;
 argv_array_pushl(&cp_upd_index.args, "update-index",
    "--ignore-skip-worktree-entries",
    "-z", "--add", "--remove", "--stdin", ((void*)0));
 argv_array_pushf(&cp_upd_index.env_array, "GIT_INDEX_FILE=%s",
    stash_index_path.buf);

 if (pipe_command(&cp_upd_index, diff_output.buf, diff_output.len,
    ((void*)0), 0, ((void*)0), 0)) {
  ret = -1;
  goto done;
 }

 if (write_index_as_tree(&info->w_tree, &istate, stash_index_path.buf, 0,
    ((void*)0))) {
  ret = -1;
  goto done;
 }

done:
 discard_index(&istate);
 UNLEAK(rev);
 object_array_clear(&rev.pending);
 clear_pathspec(&rev.prune_data);
 strbuf_release(&diff_output);
 remove_path(stash_index_path.buf);
 return ret;
}
