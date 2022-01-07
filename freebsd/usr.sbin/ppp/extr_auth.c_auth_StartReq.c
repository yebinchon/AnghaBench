
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* name; int load; void* arg; int func; } ;
struct TYPE_8__ {int (* req ) (struct authinfo*) ;} ;
struct TYPE_6__ {int timeout; int maxreq; } ;
struct TYPE_7__ {TYPE_1__ fsm; } ;
struct authinfo {int id; TYPE_4__ authtimer; TYPE_3__ fn; TYPE_2__ cfg; int retry; } ;


 int AuthTimeout ;
 int SECTICKS ;
 int stub1 (struct authinfo*) ;
 int timer_Start (TYPE_4__*) ;
 int timer_Stop (TYPE_4__*) ;

void
auth_StartReq(struct authinfo *authp)
{
  timer_Stop(&authp->authtimer);
  authp->authtimer.func = AuthTimeout;
  authp->authtimer.name = "auth";
  authp->authtimer.load = authp->cfg.fsm.timeout * SECTICKS;
  authp->authtimer.arg = (void *)authp;
  authp->retry = authp->cfg.fsm.maxreq;
  authp->id = 1;
  (*authp->fn.req)(authp);
  timer_Start(&authp->authtimer);
}
