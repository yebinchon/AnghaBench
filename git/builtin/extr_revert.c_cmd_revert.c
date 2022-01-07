
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {int edit; int action; } ;


 struct replay_opts REPLAY_OPTS_INIT ;
 int REPLAY_REVERT ;
 int _ (char*) ;
 int die (int ) ;
 scalar_t__ isatty (int ) ;
 int run_sequencer (int,char const**,struct replay_opts*) ;
 int sequencer_init_config (struct replay_opts*) ;

int cmd_revert(int argc, const char **argv, const char *prefix)
{
 struct replay_opts opts = REPLAY_OPTS_INIT;
 int res;

 if (isatty(0))
  opts.edit = 1;
 opts.action = REPLAY_REVERT;
 sequencer_init_config(&opts);
 res = run_sequencer(argc, argv, &opts);
 if (res < 0)
  die(_("revert failed"));
 return res;
}
