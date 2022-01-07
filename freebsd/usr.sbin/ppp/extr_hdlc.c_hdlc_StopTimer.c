
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlc {int ReportTimer; } ;


 int timer_Stop (int *) ;

void
hdlc_StopTimer(struct hdlc *hdlc)
{
  timer_Stop(&hdlc->ReportTimer);
}
