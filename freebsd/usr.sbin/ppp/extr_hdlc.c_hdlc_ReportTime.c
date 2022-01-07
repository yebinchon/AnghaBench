
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ unknownproto; scalar_t__ badcommand; scalar_t__ badaddr; scalar_t__ badfcs; } ;
struct TYPE_10__ {TYPE_3__* owner; } ;
struct hdlc {int ReportTimer; TYPE_5__ stats; TYPE_5__ laststats; TYPE_4__ lqm; } ;
struct TYPE_8__ {TYPE_1__* link; } ;
struct TYPE_9__ {TYPE_2__ fsm; } ;
struct TYPE_7__ {int name; } ;


 int LogPHASE ;
 int log_Printf (int ,char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ memcmp (TYPE_5__*,TYPE_5__*,int) ;
 int timer_Start (int *) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
hdlc_ReportTime(void *v)
{

  struct hdlc *hdlc = (struct hdlc *)v;

  timer_Stop(&hdlc->ReportTimer);

  if (memcmp(&hdlc->laststats, &hdlc->stats, sizeof hdlc->stats)) {
    log_Printf(LogPHASE,
              "%s: HDLC errors -> FCS: %u, ADDR: %u, COMD: %u, PROTO: %u\n",
              hdlc->lqm.owner->fsm.link->name,
       hdlc->stats.badfcs - hdlc->laststats.badfcs,
              hdlc->stats.badaddr - hdlc->laststats.badaddr,
              hdlc->stats.badcommand - hdlc->laststats.badcommand,
              hdlc->stats.unknownproto - hdlc->laststats.unknownproto);
    hdlc->laststats = hdlc->stats;
  }

  timer_Start(&hdlc->ReportTimer);
}
