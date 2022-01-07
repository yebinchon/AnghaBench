
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay_opts {int action; } ;


 struct replay_opts REPLAY_OPTS_INIT ;
 int REPLAY_PICK ;
 int _ (char*) ;
 int die (int ) ;
 int run_sequencer (int,char const**,struct replay_opts*) ;
 int sequencer_init_config (struct replay_opts*) ;

int cmd_cherry_pick(int argc, const char **argv, const char *prefix)
{
 struct replay_opts opts = REPLAY_OPTS_INIT;
 int res;

 opts.action = REPLAY_PICK;
 sequencer_init_config(&opts);
 res = run_sequencer(argc, argv, &opts);
 if (res < 0)
  die(_("cherry-pick failed"));
 return res;
}
