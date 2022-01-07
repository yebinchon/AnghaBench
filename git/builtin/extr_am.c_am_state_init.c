
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int prec; int threeway; int utf8; int message_id; char* sign_commit; int git_apply_opts; int scissors; int dir; } ;


 int SCISSORS_UNSET ;
 int argv_array_init (int *) ;
 int git_config_get_bool (char*,int*) ;
 int git_pathdup (char*) ;
 int memset (struct am_state*,int ,int) ;

__attribute__((used)) static void am_state_init(struct am_state *state)
{
 int gpgsign;

 memset(state, 0, sizeof(*state));

 state->dir = git_pathdup("rebase-apply");

 state->prec = 4;

 git_config_get_bool("am.threeway", &state->threeway);

 state->utf8 = 1;

 git_config_get_bool("am.messageid", &state->message_id);

 state->scissors = SCISSORS_UNSET;

 argv_array_init(&state->git_apply_opts);

 if (!git_config_get_bool("commit.gpgsign", &gpgsign))
  state->sign_commit = gpgsign ? "" : ((void*)0);
}
