
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_port {scalar_t__ bp_port_msg_age; scalar_t__ bp_port_max_age; int bp_port_htime; int bp_message_age_timer; } ;


 scalar_t__ BSTP_MESSAGE_AGE_INCR ;
 int bstp_timer_start (int *,int) ;

__attribute__((used)) static void
bstp_set_timer_msgage(struct bstp_port *bp)
{
 if (bp->bp_port_msg_age + BSTP_MESSAGE_AGE_INCR <=
     bp->bp_port_max_age) {
  bstp_timer_start(&bp->bp_message_age_timer,
      bp->bp_port_htime * 3);
 } else

  bstp_timer_start(&bp->bp_message_age_timer, 0);
}
