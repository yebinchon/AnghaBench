
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_5__ {int load; } ;
struct TYPE_4__ {TYPE_2__ timer; int fd; int rad; } ;
struct radius {TYPE_1__ cx; } ;


 int LogPHASE ;
 int LogRADIUS ;
 int SECTICKS ;
 int TICKUNIT ;
 scalar_t__ log_IsKept (int ) ;
 int log_Printf (int ,char*) ;
 int rad_continue_send_request (int ,int,int *,struct timeval*) ;
 int radius_Process (struct radius*,int) ;
 int timer_Start (TYPE_2__*) ;
 int timer_Stop (TYPE_2__*) ;

__attribute__((used)) static void
radius_Continue(struct radius *r, int sel)
{
  struct timeval tv;
  int got;

  timer_Stop(&r->cx.timer);
  if ((got = rad_continue_send_request(r->cx.rad, sel, &r->cx.fd, &tv)) == 0) {
    log_Printf(log_IsKept(LogRADIUS) ? LogRADIUS : LogPHASE,
        "Radius: Request re-sent\n");
    r->cx.timer.load = tv.tv_usec / TICKUNIT + tv.tv_sec * SECTICKS;
    timer_Start(&r->cx.timer);
    return;
  }

  radius_Process(r, got);
}
