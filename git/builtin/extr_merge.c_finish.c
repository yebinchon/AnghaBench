
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct object_id {int dummy; } ;
struct diff_options {int stat_width; int stat_graph_width; int output_format; int detect_rename; } ;
struct commit_list {int dummy; } ;
struct TYPE_5__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_6__ {int objects; } ;


 int DIFF_DETECT_RENAME ;
 int DIFF_FORMAT_DIFFSTAT ;
 int DIFF_FORMAT_SUMMARY ;
 int RUN_GIT_CMD ;
 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_DIE_ON_ERR ;
 char* _ (char*) ;
 int close_object_store (int ) ;
 int diff_flush (struct diff_options*) ;
 int diff_setup_done (struct diff_options*) ;
 int diff_tree_oid (struct object_id const*,struct object_id const*,char*,struct diff_options*) ;
 int diffcore_std (struct diff_options*) ;
 int getenv (char*) ;
 TYPE_4__ merge_msg ;
 int printf (char*,...) ;
 int repo_diff_setup (TYPE_2__*,struct diff_options*) ;
 int run_command_v_opt (char const**,int ) ;
 int run_hook_le (int *,char*,char*,int *) ;
 scalar_t__ show_diffstat ;
 scalar_t__ squash ;
 int squash_message (struct commit*,struct commit_list*) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 TYPE_2__* the_repository ;
 int update_ref (int ,char*,struct object_id const*,struct object_id const*,int ,int ) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void finish(struct commit *head_commit,
     struct commit_list *remoteheads,
     const struct object_id *new_head, const char *msg)
{
 struct strbuf reflog_message = STRBUF_INIT;
 const struct object_id *head = &head_commit->object.oid;

 if (!msg)
  strbuf_addstr(&reflog_message, getenv("GIT_REFLOG_ACTION"));
 else {
  if (verbosity >= 0)
   printf("%s\n", msg);
  strbuf_addf(&reflog_message, "%s: %s",
   getenv("GIT_REFLOG_ACTION"), msg);
 }
 if (squash) {
  squash_message(head_commit, remoteheads);
 } else {
  if (verbosity >= 0 && !merge_msg.len)
   printf(_("No merge message -- not updating HEAD\n"));
  else {
   const char *argv_gc_auto[] = { "gc", "--auto", ((void*)0) };
   update_ref(reflog_message.buf, "HEAD", new_head, head,
       0, UPDATE_REFS_DIE_ON_ERR);




   close_object_store(the_repository->objects);
   run_command_v_opt(argv_gc_auto, RUN_GIT_CMD);
  }
 }
 if (new_head && show_diffstat) {
  struct diff_options opts;
  repo_diff_setup(the_repository, &opts);
  opts.stat_width = -1;
  opts.stat_graph_width = -1;
  opts.output_format |=
   DIFF_FORMAT_SUMMARY | DIFF_FORMAT_DIFFSTAT;
  opts.detect_rename = DIFF_DETECT_RENAME;
  diff_setup_done(&opts);
  diff_tree_oid(head, new_head, "", &opts);
  diffcore_std(&opts);
  diff_flush(&opts);
 }


 run_hook_le(((void*)0), "post-merge", squash ? "1" : "0", ((void*)0));

 strbuf_release(&reflog_message);
}
