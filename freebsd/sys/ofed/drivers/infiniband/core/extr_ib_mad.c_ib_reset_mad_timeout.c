
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_send_wr_private {int timeout; } ;


 int msecs_to_jiffies (int) ;
 int wait_for_response (struct ib_mad_send_wr_private*) ;

void ib_reset_mad_timeout(struct ib_mad_send_wr_private *mad_send_wr,
     int timeout_ms)
{
 mad_send_wr->timeout = msecs_to_jiffies(timeout_ms);
 wait_for_response(mad_send_wr);
}
