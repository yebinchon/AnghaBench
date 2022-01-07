
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_t ;
struct TYPE_19__ {TYPE_4__* sport; } ;
struct TYPE_20__ {TYPE_5__ rnode; int * ocs; } ;
typedef TYPE_6__ ocs_node_t ;
struct TYPE_17__ {TYPE_8__* virt; } ;
struct TYPE_15__ {int timeout; scalar_t__ df_ctl; int type; int r_ctl; } ;
struct TYPE_16__ {TYPE_1__ fc_ct; } ;
struct TYPE_21__ {char* display_name; int hio_type; TYPE_3__ els_req; void* els_callback_arg; int els_callback; TYPE_2__ iparam; } ;
typedef TYPE_7__ ocs_io_t ;
struct TYPE_22__ {void** fc4_types; void* port_id; int hdr; } ;
typedef TYPE_8__ fcct_rftid_req_t ;
typedef int els_cb_t ;
struct TYPE_18__ {int fc_id; } ;


 int FC_GS_NAMESERVER_RFT_ID ;
 int FC_GS_TYPE_BIT (int ) ;
 size_t FC_GS_TYPE_WORD (int ) ;
 int FC_RCTL_ELS ;
 int FC_TYPE_FCP ;
 int FC_TYPE_GS ;
 int OCS_ELS_ROLE_ORIGINATOR ;
 scalar_t__ OCS_ELS_RSP_LEN ;
 int OCS_HW_FC_CT ;
 int __ocs_els_init ;
 int fcct_build_req_header (int *,int ,scalar_t__) ;
 int node_els_trace () ;
 TYPE_7__* ocs_els_io_alloc (TYPE_6__*,int,int ) ;
 void* ocs_htobe32 (int) ;
 int ocs_io_transition (TYPE_7__*,int ,int *) ;
 int ocs_log_err (int *,char*) ;
 int ocs_memset (TYPE_8__*,int ,int) ;

ocs_io_t *
ocs_ns_send_rftid(ocs_node_t *node, uint32_t timeout_sec, uint32_t retries,
 els_cb_t cb, void *cbarg)
{
 ocs_io_t *els;
 ocs_t *ocs = node->ocs;
 fcct_rftid_req_t *rftid;

 node_els_trace();

 els = ocs_els_io_alloc(node, sizeof(*rftid), OCS_ELS_ROLE_ORIGINATOR);
 if (els == ((void*)0)) {
  ocs_log_err(ocs, "IO alloc failed\n");
 } else {

  els->iparam.fc_ct.r_ctl = FC_RCTL_ELS;
  els->iparam.fc_ct.type = FC_TYPE_GS;
  els->iparam.fc_ct.df_ctl = 0;
  els->iparam.fc_ct.timeout = timeout_sec;

  els->els_callback = cb;
  els->els_callback_arg = cbarg;
  els->display_name = "rftid";

  rftid = els->els_req.virt;

  ocs_memset(rftid, 0, sizeof(*rftid));
  fcct_build_req_header(&rftid->hdr, FC_GS_NAMESERVER_RFT_ID, (OCS_ELS_RSP_LEN - sizeof(rftid->hdr)));
  rftid->port_id = ocs_htobe32(node->rnode.sport->fc_id);
  rftid->fc4_types[FC_GS_TYPE_WORD(FC_TYPE_FCP)] = ocs_htobe32(1 << FC_GS_TYPE_BIT(FC_TYPE_FCP));

  els->hio_type = OCS_HW_FC_CT;

  ocs_io_transition(els, __ocs_els_init, ((void*)0));
 }
 return els;
}
