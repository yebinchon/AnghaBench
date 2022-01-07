
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cmdargs {TYPE_5__* cx; int prompt; } ;
struct TYPE_11__ {TYPE_4__* physical; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_1__ fsm; } ;
struct TYPE_9__ {TYPE_2__ lcp; } ;
struct TYPE_10__ {TYPE_3__ link; } ;


 int LogWARN ;
 scalar_t__ ST_CLOSED ;
 int State2Nam (scalar_t__) ;
 int datalink_Up (TYPE_5__*,int ,int ) ;
 int log_Printf (int ,char*) ;
 int prompt_Printf (int ,char*,int ) ;
 int prompt_TtyTermMode (int ,TYPE_5__*) ;

__attribute__((used)) static int
TerminalCommand(struct cmdargs const *arg)
{
  if (!arg->prompt) {
    log_Printf(LogWARN, "term: Need a prompt\n");
    return 1;
  }

  if (arg->cx->physical->link.lcp.fsm.state > ST_CLOSED) {
    prompt_Printf(arg->prompt, "LCP state is [%s]\n",
                  State2Nam(arg->cx->physical->link.lcp.fsm.state));
    return 1;
  }

  datalink_Up(arg->cx, 0, 0);
  prompt_TtyTermMode(arg->prompt, arg->cx);
  return 0;
}
