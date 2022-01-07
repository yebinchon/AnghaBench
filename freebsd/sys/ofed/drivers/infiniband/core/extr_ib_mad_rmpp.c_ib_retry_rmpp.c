
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_rmpp_mad {int rmpp_hdr; } ;
struct TYPE_2__ {scalar_t__ seg_count; struct ib_rmpp_mad* mad; } ;
struct ib_mad_send_wr_private {scalar_t__ last_ack; scalar_t__ seg_num; int last_ack_seg; int cur_seg; TYPE_1__ send_buf; } ;


 int IB_MGMT_RMPP_FLAG_ACTIVE ;
 int IB_RMPP_RESULT_CONSUMED ;
 int IB_RMPP_RESULT_PROCESSED ;
 int IB_RMPP_RESULT_UNHANDLED ;
 int ib_get_rmpp_flags (int *) ;
 int send_next_seg (struct ib_mad_send_wr_private*) ;

int ib_retry_rmpp(struct ib_mad_send_wr_private *mad_send_wr)
{
 struct ib_rmpp_mad *rmpp_mad;
 int ret;

 rmpp_mad = mad_send_wr->send_buf.mad;
 if (!(ib_get_rmpp_flags(&rmpp_mad->rmpp_hdr) &
       IB_MGMT_RMPP_FLAG_ACTIVE))
  return IB_RMPP_RESULT_UNHANDLED;

 if (mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count)
  return IB_RMPP_RESULT_PROCESSED;

 mad_send_wr->seg_num = mad_send_wr->last_ack;
 mad_send_wr->cur_seg = mad_send_wr->last_ack_seg;

 ret = send_next_seg(mad_send_wr);
 if (ret)
  return IB_RMPP_RESULT_PROCESSED;

 return IB_RMPP_RESULT_CONSUMED;
}
