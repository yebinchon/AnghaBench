
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int load; char* name; int func; struct hdlc* arg; } ;
struct hdlc {TYPE_1__ ReportTimer; } ;


 int SECTICKS ;
 int hdlc_ReportTime ;
 int timer_Start (TYPE_1__*) ;
 int timer_Stop (TYPE_1__*) ;

void
hdlc_StartTimer(struct hdlc *hdlc)
{
  timer_Stop(&hdlc->ReportTimer);
  hdlc->ReportTimer.load = 60 * SECTICKS;
  hdlc->ReportTimer.arg = hdlc;
  hdlc->ReportTimer.func = hdlc_ReportTime;
  hdlc->ReportTimer.name = "hdlc";
  timer_Start(&hdlc->ReportTimer);
}
