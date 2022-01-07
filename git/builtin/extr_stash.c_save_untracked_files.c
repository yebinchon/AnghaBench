
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct stash_info {int u_commit; int u_tree; } ;
struct index_state {int * member_0; } ;
struct child_process {int git_cmd; int env_array; int args; } ;
struct TYPE_2__ {int buf; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int argv_array_pushf (int *,char*,int ) ;
 int argv_array_pushl (int *,char*,char*,char*,char*,char*,int *) ;
 scalar_t__ commit_tree (int ,int ,int *,int *,int *,int *,int *) ;
 int discard_index (struct index_state*) ;
 scalar_t__ pipe_command (struct child_process*,int ,int ,int *,int ,int *,int ) ;
 int remove_path (int ) ;
 TYPE_1__ stash_index_path ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ write_index_as_tree (int *,struct index_state*,int ,int ,int *) ;

__attribute__((used)) static int save_untracked_files(struct stash_info *info, struct strbuf *msg,
    struct strbuf files)
{
 int ret = 0;
 struct strbuf untracked_msg = STRBUF_INIT;
 struct child_process cp_upd_index = CHILD_PROCESS_INIT;
 struct index_state istate = { ((void*)0) };

 cp_upd_index.git_cmd = 1;
 argv_array_pushl(&cp_upd_index.args, "update-index", "-z", "--add",
    "--remove", "--stdin", ((void*)0));
 argv_array_pushf(&cp_upd_index.env_array, "GIT_INDEX_FILE=%s",
    stash_index_path.buf);

 strbuf_addf(&untracked_msg, "untracked files on %s\n", msg->buf);
 if (pipe_command(&cp_upd_index, files.buf, files.len, ((void*)0), 0,
    ((void*)0), 0)) {
  ret = -1;
  goto done;
 }

 if (write_index_as_tree(&info->u_tree, &istate, stash_index_path.buf, 0,
    ((void*)0))) {
  ret = -1;
  goto done;
 }

 if (commit_tree(untracked_msg.buf, untracked_msg.len,
   &info->u_tree, ((void*)0), &info->u_commit, ((void*)0), ((void*)0))) {
  ret = -1;
  goto done;
 }

done:
 discard_index(&istate);
 strbuf_release(&untracked_msg);
 remove_path(stash_index_path.buf);
 return ret;
}
