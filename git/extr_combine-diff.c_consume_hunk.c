
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct combine_diff_state {long ob; long on; long nb; long nn; long lno; size_t n; TYPE_1__* sline; int num_parent; TYPE_1__* lost_bucket; } ;
struct TYPE_2__ {long* p_lno; } ;


 long* xcalloc (int ,int) ;

__attribute__((used)) static void consume_hunk(void *state_,
    long ob, long on,
    long nb, long nn,
    const char *funcline, long funclen)
{
 struct combine_diff_state *state = state_;

 state->ob = ob;
 state->on = on;
 state->nb = nb;
 state->nn = nn;
 state->lno = state->nb;
 if (state->nn == 0) {
  state->lost_bucket = &state->sline[state->nb];
  if (!state->nb)
   state->nb = 1;
 } else {
  state->lost_bucket = &state->sline[state->nb-1];
 }
 if (!state->sline[state->nb-1].p_lno)
  state->sline[state->nb-1].p_lno =
   xcalloc(state->num_parent, sizeof(unsigned long));
 state->sline[state->nb-1].p_lno[state->n] = state->ob;
}
