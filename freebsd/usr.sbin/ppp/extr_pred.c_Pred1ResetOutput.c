
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred1_state {int dict; scalar_t__ hash; } ;


 int LogCCP ;
 int log_Printf (int ,char*) ;
 int memset (int ,char,int) ;

__attribute__((used)) static int
Pred1ResetOutput(void *v)
{
  struct pred1_state *state = (struct pred1_state *)v;
  state->hash = 0;
  memset(state->dict, '\0', sizeof state->dict);
  log_Printf(LogCCP, "Predictor1: Output channel reset\n");

  return 1;
}
