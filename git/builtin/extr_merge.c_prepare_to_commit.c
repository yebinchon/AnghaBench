
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct commit_list {int dummy; } ;


 int BUG (char*) ;
 scalar_t__ COMMIT_MSG_CLEANUP_SCISSORS ;
 struct strbuf STRBUF_INIT ;
 int * _ (char*) ;
 int abort_commit (struct commit_list*,int *) ;
 int append_signoff (struct strbuf*,int ,int ) ;
 int cleanup_message (struct strbuf*,scalar_t__,int ) ;
 scalar_t__ cleanup_mode ;
 int comment_line_char ;
 int discard_cache () ;
 scalar_t__ find_hook (char*) ;
 char* get_index_file () ;
 int git_path_merge_msg (int ) ;
 int ignore_non_trailer (int ,int ) ;
 scalar_t__ launch_editor (int ,int *,int *) ;
 char* merge_editor_comment ;
 struct strbuf merge_msg ;
 char* no_scissors_editor_comment ;
 int no_verify ;
 scalar_t__ option_edit ;
 int read_cache_from (char const*) ;
 int read_merge_msg (struct strbuf*) ;
 scalar_t__ run_commit_hook (int,char const*,char*,int ,...) ;
 char* scissors_editor_comment ;
 scalar_t__ signoff ;
 scalar_t__ squash ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_commented_addf (struct strbuf*,char*,...) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int write_file_buf (int ,int ,int ) ;
 int write_merge_heads (struct commit_list*) ;
 int wt_status_append_cut_line (struct strbuf*) ;

__attribute__((used)) static void prepare_to_commit(struct commit_list *remoteheads)
{
 struct strbuf msg = STRBUF_INIT;
 const char *index_file = get_index_file();

 if (!no_verify && run_commit_hook(0 < option_edit, index_file, "pre-merge-commit", ((void*)0)))
  abort_commit(remoteheads, ((void*)0));





 if (find_hook("pre-merge-commit"))
  discard_cache();
 read_cache_from(index_file);
 strbuf_addbuf(&msg, &merge_msg);
 if (squash)
  BUG("the control must not reach here under --squash");
 if (0 < option_edit) {
  strbuf_addch(&msg, '\n');
  if (cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS) {
   wt_status_append_cut_line(&msg);
   strbuf_commented_addf(&msg, "\n");
  }
  strbuf_commented_addf(&msg, _(merge_editor_comment));
  strbuf_commented_addf(&msg, _(cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS ?
   scissors_editor_comment :
   no_scissors_editor_comment), comment_line_char);
 }
 if (signoff)
  append_signoff(&msg, ignore_non_trailer(msg.buf, msg.len), 0);
 write_merge_heads(remoteheads);
 write_file_buf(git_path_merge_msg(the_repository), msg.buf, msg.len);
 if (run_commit_hook(0 < option_edit, get_index_file(), "prepare-commit-msg",
       git_path_merge_msg(the_repository), "merge", ((void*)0)))
  abort_commit(remoteheads, ((void*)0));
 if (0 < option_edit) {
  if (launch_editor(git_path_merge_msg(the_repository), ((void*)0), ((void*)0)))
   abort_commit(remoteheads, ((void*)0));
 }

 if (!no_verify && run_commit_hook(0 < option_edit, get_index_file(),
       "commit-msg",
       git_path_merge_msg(the_repository), ((void*)0)))
  abort_commit(remoteheads, ((void*)0));

 read_merge_msg(&msg);
 cleanup_message(&msg, cleanup_mode, 0);
 if (!msg.len)
  abort_commit(remoteheads, _("Empty commit message."));
 strbuf_release(&merge_msg);
 strbuf_addbuf(&merge_msg, &msg);
 strbuf_release(&msg);
}
