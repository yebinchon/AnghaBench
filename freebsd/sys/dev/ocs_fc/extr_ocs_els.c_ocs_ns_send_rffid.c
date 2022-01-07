
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_t ;
struct TYPE_20__ {TYPE_4__* sport; } ;
struct TYPE_22__ {TYPE_6__* sport; TYPE_5__ rnode; int * ocs; } ;
typedef TYPE_7__ ocs_node_t ;
struct TYPE_18__ {TYPE_9__* virt; } ;
struct TYPE_16__ {int timeout; scalar_t__ df_ctl; int type; int r_ctl; } ;
struct TYPE_17__ {TYPE_1__ fc_ct; } ;
struct TYPE_23__ {char* display_name; int hio_type; TYPE_3__ els_req; void* els_callback_arg; int els_callback; TYPE_2__ iparam; } ;
typedef TYPE_8__ ocs_io_t ;
struct TYPE_24__ {int type; int fc4_feature_bits; int port_id; int hdr; } ;
typedef TYPE_9__ fcct_rffid_req_t ;
typedef int els_cb_t ;
struct TYPE_21__ {scalar_t__ enable_tgt; scalar_t__ enable_ini; } ;
struct TYPE_19__ {int fc_id; } ;


 int FC4_FEATURE_INITIATOR ;
 int FC4_FEATURE_TARGET ;
 int FC_GS_NAMESERVER_RFF_ID ;
 int FC_RCTL_ELS ;
 int FC_TYPE_FCP ;
 int FC_TYPE_GS ;
 int OCS_ELS_ROLE_ORIGINATOR ;
 scalar_t__ OCS_ELS_RSP_LEN ;
 int OCS_HW_FC_CT ;
 int __ocs_els_init ;
 int fcct_build_req_header (int *,int ,scalar_t__) ;
 int node_els_trace () ;
 TYPE_8__* ocs_els_io_alloc (TYPE_7__*,int,int ) ;
 int ocs_htobe32 (int ) ;
 int ocs_io_transition (TYPE_8__*,int ,int *) ;
 int ocs_log_err (int *,char*) ;
 int ocs_memset (TYPE_9__*,int ,int) ;

ocs_io_t *
ocs_ns_send_rffid(ocs_node_t *node, uint32_t timeout_sec, uint32_t retries,
 els_cb_t cb, void *cbarg)
{
 ocs_io_t *els;
 ocs_t *ocs = node->ocs;
 fcct_rffid_req_t *rffid;

 node_els_trace();

 els = ocs_els_io_alloc(node, sizeof(*rffid), OCS_ELS_ROLE_ORIGINATOR);
 if (els == ((void*)0)) {
  ocs_log_err(ocs, "IO alloc failed\n");
 } else {

  els->iparam.fc_ct.r_ctl = FC_RCTL_ELS;
  els->iparam.fc_ct.type = FC_TYPE_GS;
  els->iparam.fc_ct.df_ctl = 0;
  els->iparam.fc_ct.timeout = timeout_sec;

  els->els_callback = cb;
  els->els_callback_arg = cbarg;
  els->display_name = "rffid";

  rffid = els->els_req.virt;

  ocs_memset(rffid, 0, sizeof(*rffid));

  fcct_build_req_header(&rffid->hdr, FC_GS_NAMESERVER_RFF_ID, (OCS_ELS_RSP_LEN - sizeof(rffid->hdr)));
  rffid->port_id = ocs_htobe32(node->rnode.sport->fc_id);
  if (node->sport->enable_ini) {
   rffid->fc4_feature_bits |= FC4_FEATURE_INITIATOR;
  }
  if (node->sport->enable_tgt) {
   rffid->fc4_feature_bits |= FC4_FEATURE_TARGET;
  }
  rffid->type = FC_TYPE_FCP;

  els->hio_type = OCS_HW_FC_CT;

  ocs_io_transition(els, __ocs_els_init, ((void*)0));
 }
 return els;
}
