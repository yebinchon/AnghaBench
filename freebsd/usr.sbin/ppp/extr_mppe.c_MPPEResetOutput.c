
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mppe_state {int flushnext; scalar_t__ stateless; } ;


 int LogCCP ;
 int log_Printf (int ,char*) ;

__attribute__((used)) static int
MPPEResetOutput(void *v)
{
  struct mppe_state *mop = (struct mppe_state *)v;

  if (mop->stateless)
    log_Printf(LogCCP, "MPPE: Unexpected output channel reset\n");
  else {
    log_Printf(LogCCP, "MPPE: Output channel reset\n");
    mop->flushnext = 1;
  }

  return 0;
}
