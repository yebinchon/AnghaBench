
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct opa_smp {int dummy; } ;
struct opa_mad {int dummy; } ;
struct ib_wc {int dummy; } ;
struct ib_mad_qp_info {TYPE_3__* qp; } ;
struct TYPE_12__ {int byte_len; } ;
struct TYPE_9__ {int * grh; struct opa_mad* opa_mad; } ;
struct TYPE_10__ {TYPE_1__ recv_buf; TYPE_4__* wc; } ;
struct TYPE_13__ {TYPE_4__ wc; TYPE_2__ recv_wc; } ;
struct ib_mad_private {TYPE_5__ header; int grh; scalar_t__ mad; } ;
struct ib_mad_port_private {TYPE_6__* device; } ;
struct ib_mad_hdr {int dummy; } ;
typedef enum smi_forward_action { ____Placeholder_smi_forward_action } smi_forward_action ;
typedef enum smi_action { ____Placeholder_smi_action } smi_action ;
struct TYPE_14__ {int phys_port_cnt; } ;
struct TYPE_11__ {int qp_num; } ;


 scalar_t__ IB_SMI_DISCARD ;
 int IB_SMI_HANDLE ;
 int IB_SMI_LOCAL ;
 int IB_SMI_SEND ;
 int agent_send_response (struct ib_mad_hdr const*,int *,struct ib_wc*,TYPE_6__*,int ,int ,int ,int) ;
 int mad_priv_size (struct ib_mad_private*) ;
 int memcpy (struct ib_mad_private*,struct ib_mad_private*,int ) ;
 int opa_smi_check_forward_dr_smp (struct opa_smp*) ;
 scalar_t__ opa_smi_check_local_smp (struct opa_smp*,TYPE_6__*) ;
 int opa_smi_get_fwd_port (struct opa_smp*) ;
 scalar_t__ opa_smi_handle_dr_smp_recv (struct opa_smp*,scalar_t__,int,int ) ;
 scalar_t__ opa_smi_handle_dr_smp_send (struct opa_smp*,scalar_t__,int) ;
 scalar_t__ rdma_cap_ib_switch (TYPE_6__*) ;

__attribute__((used)) static enum smi_action
handle_opa_smi(struct ib_mad_port_private *port_priv,
        struct ib_mad_qp_info *qp_info,
        struct ib_wc *wc,
        int port_num,
        struct ib_mad_private *recv,
        struct ib_mad_private *response)
{
 enum smi_forward_action retsmi;
 struct opa_smp *smp = (struct opa_smp *)recv->mad;

 if (opa_smi_handle_dr_smp_recv(smp,
       rdma_cap_ib_switch(port_priv->device),
       port_num,
       port_priv->device->phys_port_cnt) ==
       IB_SMI_DISCARD)
  return IB_SMI_DISCARD;

 retsmi = opa_smi_check_forward_dr_smp(smp);
 if (retsmi == IB_SMI_LOCAL)
  return IB_SMI_HANDLE;

 if (retsmi == IB_SMI_SEND) {
  if (opa_smi_handle_dr_smp_send(smp,
        rdma_cap_ib_switch(port_priv->device),
        port_num) == IB_SMI_DISCARD)
   return IB_SMI_DISCARD;

  if (opa_smi_check_local_smp(smp, port_priv->device) ==
      IB_SMI_DISCARD)
   return IB_SMI_DISCARD;

 } else if (rdma_cap_ib_switch(port_priv->device)) {

  memcpy(response, recv, mad_priv_size(response));
  response->header.recv_wc.wc = &response->header.wc;
  response->header.recv_wc.recv_buf.opa_mad =
    (struct opa_mad *)response->mad;
  response->header.recv_wc.recv_buf.grh = &response->grh;

  agent_send_response((const struct ib_mad_hdr *)response->mad,
        &response->grh, wc,
        port_priv->device,
        opa_smi_get_fwd_port(smp),
        qp_info->qp->qp_num,
        recv->header.wc.byte_len,
        1);

  return IB_SMI_DISCARD;
 }

 return IB_SMI_HANDLE;
}
