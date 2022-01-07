
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {int allow_ff; int allow_empty; int verbose; int strategy; int gpg_sign; int reschedule_failed_exec; int allow_empty_message; scalar_t__ allow_rerere_auto; int signoff; int action; } ;
struct rebase_options {int flags; int strategy_opts; int strategy; int gpg_sign_opt; int reschedule_failed_exec; int allow_empty_message; scalar_t__ allow_rerere_autoupdate; int signoff; } ;


 int REBASE_FORCE ;
 int REBASE_VERBOSE ;
 int REPLAY_INTERACTIVE_REBASE ;
 struct replay_opts REPLAY_OPTS_INIT ;
 int parse_strategy_opts (struct replay_opts*,int ) ;
 int sequencer_init_config (struct replay_opts*) ;
 int xstrdup_or_null (int ) ;

__attribute__((used)) static struct replay_opts get_replay_opts(const struct rebase_options *opts)
{
 struct replay_opts replay = REPLAY_OPTS_INIT;

 replay.action = REPLAY_INTERACTIVE_REBASE;
 sequencer_init_config(&replay);

 replay.signoff = opts->signoff;
 replay.allow_ff = !(opts->flags & REBASE_FORCE);
 if (opts->allow_rerere_autoupdate)
  replay.allow_rerere_auto = opts->allow_rerere_autoupdate;
 replay.allow_empty = 1;
 replay.allow_empty_message = opts->allow_empty_message;
 replay.verbose = opts->flags & REBASE_VERBOSE;
 replay.reschedule_failed_exec = opts->reschedule_failed_exec;
 replay.gpg_sign = xstrdup_or_null(opts->gpg_sign_opt);
 replay.strategy = opts->strategy;
 if (opts->strategy_opts)
  parse_strategy_opts(&replay, opts->strategy_opts);

 return replay;
}
