
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct fsm {TYPE_1__* link; } ;
struct TYPE_7__ {size_t algorithm; int * state; } ;
struct ccp {int reset_sent; int last_reset; TYPE_3__ in; } ;
struct TYPE_6__ {int (* Reset ) (int *) ;} ;
struct TYPE_8__ {TYPE_2__ i; } ;
struct TYPE_5__ {int name; } ;


 int LogCCP ;
 TYPE_4__** algorithm ;
 struct ccp* fsm2ccp (struct fsm*) ;
 int log_Printf (int ,char*,int ,...) ;
 int stub1 (int *) ;

__attribute__((used)) static void
CcpRecvResetAck(struct fsm *fp, u_char id)
{

  struct ccp *ccp = fsm2ccp(fp);

  if (ccp->reset_sent != -1) {
    if (id != ccp->reset_sent) {
      log_Printf(LogCCP, "%s: Incorrect ResetAck (id %d, not %d)"
                " ignored\n", fp->link->name, id, ccp->reset_sent);
      return;
    }

  } else if (id == ccp->last_reset)
    log_Printf(LogCCP, "%s: Duplicate ResetAck (resetting again)\n",
               fp->link->name);
  else {
    log_Printf(LogCCP, "%s: Unexpected ResetAck (id %d) ignored\n",
               fp->link->name, id);
    return;
  }

  ccp->last_reset = ccp->reset_sent;
  ccp->reset_sent = -1;
  if (ccp->in.state != ((void*)0))
    (*algorithm[ccp->in.algorithm]->i.Reset)(ccp->in.state);
}
