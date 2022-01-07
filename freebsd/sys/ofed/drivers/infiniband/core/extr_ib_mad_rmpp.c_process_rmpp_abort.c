
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rmpp_status; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; } ;
struct TYPE_3__ {scalar_t__ mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct ib_mad_agent_private {int dummy; } ;


 scalar_t__ IB_MGMT_RMPP_STATUS_ABORT_MAX ;
 scalar_t__ IB_MGMT_RMPP_STATUS_ABORT_MIN ;
 scalar_t__ IB_MGMT_RMPP_STATUS_BAD_STATUS ;
 int abort_send (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,scalar_t__) ;
 int nack_recv (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,scalar_t__) ;

__attribute__((used)) static void process_rmpp_abort(struct ib_mad_agent_private *agent,
          struct ib_mad_recv_wc *mad_recv_wc)
{
 struct ib_rmpp_mad *rmpp_mad;

 rmpp_mad = (struct ib_rmpp_mad *)mad_recv_wc->recv_buf.mad;

 if (rmpp_mad->rmpp_hdr.rmpp_status < IB_MGMT_RMPP_STATUS_ABORT_MIN ||
     rmpp_mad->rmpp_hdr.rmpp_status > IB_MGMT_RMPP_STATUS_ABORT_MAX) {
  abort_send(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_BAD_STATUS);
  nack_recv(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_BAD_STATUS);
 } else
  abort_send(agent, mad_recv_wc, rmpp_mad->rmpp_hdr.rmpp_status);
}
