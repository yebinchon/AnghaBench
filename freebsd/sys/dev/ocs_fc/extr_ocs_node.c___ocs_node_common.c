
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_19__ {int refound; int display_name; struct TYPE_19__* ocs; struct TYPE_19__* els_req_cnt; struct TYPE_19__* els_cmpl_cnt; int attached; struct TYPE_19__* app; } ;
typedef TYPE_5__ ocs_t ;
typedef int ocs_sm_event_t ;
typedef TYPE_5__ ocs_sm_ctx_t ;
typedef TYPE_5__ ocs_node_t ;
struct TYPE_20__ {int io; TYPE_4__* header; TYPE_2__* payload; } ;
typedef TYPE_8__ ocs_node_cb_t ;
struct TYPE_21__ {int ox_id; } ;
typedef TYPE_9__ fc_header_t ;
struct TYPE_17__ {TYPE_9__* virt; } ;
struct TYPE_18__ {TYPE_3__ dma; } ;
struct TYPE_15__ {scalar_t__ virt; } ;
struct TYPE_16__ {TYPE_1__ dma; } ;


 int FALSE ;
 int FCCT_COMMAND_NOT_SUPPORTED ;
 int FCCT_HDR_CMDRSP_REJECT ;
 int FC_EXPL_NO_ADDITIONAL ;
 int FC_REASON_COMMAND_NOT_SUPPORTED ;
 int FC_REASON_UNABLE_TO_PERFORM ;
 int TRUE ;
 int ocs_assert (TYPE_5__*,int *) ;
 int ocs_be16toh (int ) ;
 int ocs_bls_send_acc_hdr (int ,TYPE_9__*) ;
 int ocs_log_debug (TYPE_5__*,char*,int ,char const*,int ) ;
 int ocs_log_test (TYPE_5__*,char*,int ,char const*,int ) ;
 int ocs_send_ct_rsp (int ,int ,scalar_t__,int ,int ,int ) ;
 int ocs_send_ls_rjt (int ,int ,int ,int ,int ,int *,int *) ;
 int ocs_sm_event_name (int) ;

void *
__ocs_node_common(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *arg)
{
 ocs_node_t *node = ((void*)0);
 ocs_t *ocs = ((void*)0);
 ocs_node_cb_t *cbdata = arg;
 ocs_assert(ctx, ((void*)0));
 ocs_assert(ctx->app, ((void*)0));
 node = ctx->app;
 ocs_assert(node->ocs, ((void*)0));
 ocs = node->ocs;

 switch(evt) {
 case 154:
 case 138:
 case 153:
 case 133:
 case 144:
 case 152:
  break;

 case 143:
  node->refound = 1;
  break;


 case 146:
  node->attached = TRUE;
  break;

 case 145:
 case 147:
  node->attached = FALSE;
  break;




 case 131:
 case 132:
  ocs_assert(node->els_cmpl_cnt, ((void*)0));
  node->els_cmpl_cnt--;
  break;




 case 129:
 case 130:
 case 128:
 case 155:
  ocs_assert(node->els_req_cnt, ((void*)0));
  node->els_req_cnt--;
  break;

 case 156: {
  fc_header_t *hdr = cbdata->header->dma.virt;


  ocs_log_debug(ocs, "[%s] (%s) ELS x%02x, LS_RJT not supported\n",
         node->display_name, funcname, ((uint8_t*)cbdata->payload->dma.virt)[0]);
  ocs_send_ls_rjt(cbdata->io, ocs_be16toh(hdr->ox_id),
   FC_REASON_COMMAND_NOT_SUPPORTED, FC_EXPL_NO_ADDITIONAL, 0,
   ((void*)0), ((void*)0));
  break;
 }

 case 141:
 case 150:
 case 148:
 case 140:
 case 139:
 case 142:
 case 151:
 case 157:
 case 135:
 case 134: {
  fc_header_t *hdr = cbdata->header->dma.virt;

  ocs_log_debug(ocs, "[%s] (%s) %s sending ELS_RJT\n",
         node->display_name, funcname, ocs_sm_event_name(evt));

  ocs_send_ls_rjt(cbdata->io, ocs_be16toh(hdr->ox_id),
   FC_REASON_UNABLE_TO_PERFORM, FC_EXPL_NO_ADDITIONAL, 0,
   ((void*)0), ((void*)0));

  break;
 }
 case 149:
 case 136:
 case 137: {
  fc_header_t *hdr = cbdata->header->dma.virt;
  ocs_log_debug(ocs, "[%s] (%s) %s sending CT_REJECT\n",
         node->display_name, funcname, ocs_sm_event_name(evt));
  ocs_send_ct_rsp(cbdata->io, hdr->ox_id, cbdata->payload->dma.virt, FCCT_HDR_CMDRSP_REJECT, FCCT_COMMAND_NOT_SUPPORTED, 0);
  break;
 }

 case 158: {
  fc_header_t *hdr = cbdata->header->dma.virt;
  ocs_log_debug(ocs, "[%s] (%s) %s sending BA_ACC\n",
         node->display_name, funcname, ocs_sm_event_name(evt));


  ocs_bls_send_acc_hdr(cbdata->io, hdr);
  break;
 }

 default:
  ocs_log_test(node->ocs, "[%s] %-20s %-20s not handled\n", node->display_name, funcname,
   ocs_sm_event_name(evt));
  break;
 }
 return ((void*)0);
}
