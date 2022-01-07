
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct combine_diff_state {int lno; int nmask; TYPE_1__* sline; int n; int lost_bucket; } ;
struct TYPE_2__ {int flag; } ;


 int append_lost (int ,int ,char*,unsigned long) ;

__attribute__((used)) static void consume_line(void *state_, char *line, unsigned long len)
{
 struct combine_diff_state *state = state_;
 if (!state->lost_bucket)
  return;
 switch (line[0]) {
 case '-':
  append_lost(state->lost_bucket, state->n, line+1, len-1);
  break;
 case '+':
  state->sline[state->lno-1].flag |= state->nmask;
  state->lno++;
  break;
 }
}
