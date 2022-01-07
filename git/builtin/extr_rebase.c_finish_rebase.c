
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct replay_opts {int action; } ;
struct rebase_options {scalar_t__ type; int state_dir; } ;
struct TYPE_2__ {int objects; } ;


 scalar_t__ REBASE_INTERACTIVE ;
 int REF_NO_DEREF ;
 int REPLAY_INTERACTIVE_REBASE ;
 struct replay_opts REPLAY_OPTS_INIT ;
 int RUN_GIT_CMD ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int apply_autostash (struct rebase_options*) ;
 int close_object_store (int ) ;
 int delete_ref (int *,char*,int *,int ) ;
 int error (int ,int ) ;
 scalar_t__ remove_dir_recursively (struct strbuf*,int ) ;
 int run_command_v_opt (char const**,int ) ;
 int sequencer_remove_state (struct replay_opts*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 TYPE_1__* the_repository ;

__attribute__((used)) static int finish_rebase(struct rebase_options *opts)
{
 struct strbuf dir = STRBUF_INIT;
 const char *argv_gc_auto[] = { "gc", "--auto", ((void*)0) };
 int ret = 0;

 delete_ref(((void*)0), "REBASE_HEAD", ((void*)0), REF_NO_DEREF);
 apply_autostash(opts);
 close_object_store(the_repository->objects);




 run_command_v_opt(argv_gc_auto, RUN_GIT_CMD);
 if (opts->type == REBASE_INTERACTIVE) {
  struct replay_opts replay = REPLAY_OPTS_INIT;

  replay.action = REPLAY_INTERACTIVE_REBASE;
  ret = sequencer_remove_state(&replay);
 } else {
  strbuf_addstr(&dir, opts->state_dir);
  if (remove_dir_recursively(&dir, 0))
   ret = error(_("could not remove '%s'"),
        opts->state_dir);
  strbuf_release(&dir);
 }

 return ret;
}
