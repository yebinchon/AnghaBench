
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_12__ {TYPE_1__* ocs; } ;
typedef TYPE_2__ ocs_node_t ;
struct TYPE_13__ {int payload; int header; } ;
typedef TYPE_3__ ocs_node_cb_t ;
struct TYPE_14__ {int payload; int header; } ;
typedef TYPE_4__ ocs_hw_sequence_t ;
typedef int int32_t ;
typedef int cbdata ;


 int OCS_EVT_FCP_CMD_RCVD ;
 int ocs_hw_sequence_free (int *,TYPE_4__*) ;
 int ocs_memset (TYPE_3__*,int ,int) ;
 int ocs_node_post_event (TYPE_2__*,int ,TYPE_3__*) ;

int32_t
ocs_node_recv_fcp_cmd(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
 ocs_node_cb_t cbdata;
 ocs_t *ocs = node->ocs;

 ocs_memset(&cbdata, 0, sizeof(cbdata));
 cbdata.header = seq->header;
 cbdata.payload = seq->payload;
 ocs_node_post_event(node, OCS_EVT_FCP_CMD_RCVD, &cbdata);
 ocs_hw_sequence_free(&ocs->hw, seq);
 return 0;
}
