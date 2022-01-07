
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mad_rmpp_recv {int ah; TYPE_1__* agent; } ;
struct ib_rmpp_mad {int dummy; } ;
struct ib_mad_send_buf {int ah; } ;
struct TYPE_8__ {TYPE_5__* mad; } ;
struct ib_mad_recv_wc {TYPE_3__ recv_buf; TYPE_2__* wc; } ;
struct TYPE_9__ {int mgmt_class; } ;
struct TYPE_10__ {TYPE_4__ mad_hdr; } ;
struct TYPE_7__ {int pkey_index; int src_qp; } ;
struct TYPE_6__ {int agent; } ;


 int GFP_KERNEL ;
 int IB_MGMT_BASE_VERSION ;
 scalar_t__ IS_ERR (struct ib_mad_send_buf*) ;
 int format_ack (struct ib_mad_send_buf*,struct ib_rmpp_mad*,struct mad_rmpp_recv*) ;
 struct ib_mad_send_buf* ib_create_send_mad (int *,int ,int ,int,int,int ,int ,int ) ;
 int ib_free_send_mad (struct ib_mad_send_buf*) ;
 int ib_get_mad_data_offset (int ) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;

__attribute__((used)) static void ack_recv(struct mad_rmpp_recv *rmpp_recv,
       struct ib_mad_recv_wc *recv_wc)
{
 struct ib_mad_send_buf *msg;
 int ret, hdr_len;

 hdr_len = ib_get_mad_data_offset(recv_wc->recv_buf.mad->mad_hdr.mgmt_class);
 msg = ib_create_send_mad(&rmpp_recv->agent->agent, recv_wc->wc->src_qp,
     recv_wc->wc->pkey_index, 1, hdr_len,
     0, GFP_KERNEL,
     IB_MGMT_BASE_VERSION);
 if (IS_ERR(msg))
  return;

 format_ack(msg, (struct ib_rmpp_mad *) recv_wc->recv_buf.mad, rmpp_recv);
 msg->ah = rmpp_recv->ah;
 ret = ib_post_send_mad(msg, ((void*)0));
 if (ret)
  ib_free_send_mad(msg);
}
