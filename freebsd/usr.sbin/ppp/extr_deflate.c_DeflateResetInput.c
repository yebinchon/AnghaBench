
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflate_state {int cx; scalar_t__ uncomp_rec; scalar_t__ seqno; } ;


 int LogCCP ;
 int inflateReset (int *) ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static void
DeflateResetInput(void *v)
{
  struct deflate_state *state = (struct deflate_state *)v;

  state->seqno = 0;
  state->uncomp_rec = 0;
  inflateReset(&state->cx);
  log_Printf(LogCCP, "Deflate: Input channel reset\n");
}
