
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ seg_count; } ;
struct ib_mad_send_wr_private {scalar_t__ last_ack; scalar_t__ status; TYPE_1__ send_buf; int timeout; } ;
struct ib_mad_send_wc {TYPE_1__* send_buf; int vendor_err; int status; } ;
struct ib_mad_recv_wc {int dummy; } ;
struct ib_mad_agent_private {int lock; } ;


 int IB_WC_REM_ABORT_ERR ;
 scalar_t__ IB_WC_SUCCESS ;
 struct ib_mad_send_wr_private* ib_find_send_mad (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 int ib_mad_complete_send_wr (struct ib_mad_send_wr_private*,struct ib_mad_send_wc*) ;
 int ib_mark_mad_done (struct ib_mad_send_wr_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void abort_send(struct ib_mad_agent_private *agent,
         struct ib_mad_recv_wc *mad_recv_wc, u8 rmpp_status)
{
 struct ib_mad_send_wr_private *mad_send_wr;
 struct ib_mad_send_wc wc;
 unsigned long flags;

 spin_lock_irqsave(&agent->lock, flags);
 mad_send_wr = ib_find_send_mad(agent, mad_recv_wc);
 if (!mad_send_wr)
  goto out;

 if ((mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count) ||
     (!mad_send_wr->timeout) || (mad_send_wr->status != IB_WC_SUCCESS))
  goto out;

 ib_mark_mad_done(mad_send_wr);
 spin_unlock_irqrestore(&agent->lock, flags);

 wc.status = IB_WC_REM_ABORT_ERR;
 wc.vendor_err = rmpp_status;
 wc.send_buf = &mad_send_wr->send_buf;
 ib_mad_complete_send_wr(mad_send_wr, &wc);
 return;
out:
 spin_unlock_irqrestore(&agent->lock, flags);
}
