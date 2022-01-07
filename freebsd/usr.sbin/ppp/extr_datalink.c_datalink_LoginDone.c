
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_16__ {int tries; scalar_t__ incs; } ;
struct TYPE_14__ {int logout; } ;
struct TYPE_15__ {TYPE_2__ script; } ;
struct TYPE_13__ {scalar_t__ run; int packetmode; } ;
struct datalink {scalar_t__ state; TYPE_7__* physical; TYPE_4__ dial; TYPE_3__ cfg; int chat; TYPE_1__ script; } ;
struct TYPE_17__ {int openmode; } ;
struct TYPE_12__ {int fsm; TYPE_5__ cfg; } ;
struct TYPE_18__ {TYPE_10__ lcp; int ccp; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_6__ link; int async; int hdlc; } ;


 scalar_t__ DATALINK_LCP ;
 scalar_t__ DATALINK_LOGOUT ;
 scalar_t__ DATALINK_READY ;
 int LogWARN ;
 scalar_t__ PHYS_DEDICATED ;
 int async_Setup (int *) ;
 int ccp_Setup (int *) ;
 int chat_Finish (int *) ;
 int chat_Setup (int *,int ,int *) ;
 int datalink_HangupDone (struct datalink*) ;
 int datalink_NewState (struct datalink*,scalar_t__) ;
 int fsm_Open (int *) ;
 int fsm_Up (int *) ;
 int hdlc_Init (int *,TYPE_10__*) ;
 int lcp_Setup (TYPE_10__*,int ) ;
 int log_Printf (int ,char*) ;
 int physical_Close (TYPE_7__*) ;
 int physical_Raw (TYPE_7__*) ;
 int physical_StopDeviceTimer (TYPE_7__*) ;

__attribute__((used)) static void
datalink_LoginDone(struct datalink *dl)
{
  chat_Finish(&dl->chat);

  if (!dl->script.packetmode) {
    dl->dial.tries = -1;
    dl->dial.incs = 0;
    datalink_NewState(dl, DATALINK_READY);
  } else if (!physical_Raw(dl->physical)) {
    dl->dial.tries = 0;
    log_Printf(LogWARN, "datalink_LoginDone: Not connected.\n");
    if (dl->script.run) {
      datalink_NewState(dl, DATALINK_LOGOUT);
      if (!chat_Setup(&dl->chat, dl->cfg.script.logout, ((void*)0)))
        log_Printf(LogWARN, "Invalid logout script\n");
    } else {
      physical_StopDeviceTimer(dl->physical);
      if (dl->physical->type == PHYS_DEDICATED)

        physical_Close(dl->physical);
      datalink_HangupDone(dl);
    }
  } else {
    dl->dial.tries = -1;
    dl->dial.incs = 0;

    hdlc_Init(&dl->physical->hdlc, &dl->physical->link.lcp);
    async_Setup(&dl->physical->async);

    lcp_Setup(&dl->physical->link.lcp, dl->state == DATALINK_READY ?
              0 : dl->physical->link.lcp.cfg.openmode);
    ccp_Setup(&dl->physical->link.ccp);

    datalink_NewState(dl, DATALINK_LCP);
    fsm_Up(&dl->physical->link.lcp.fsm);
    fsm_Open(&dl->physical->link.lcp.fsm);
  }
}
