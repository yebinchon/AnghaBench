
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ send_ls_acc; int ls_acc_did; TYPE_2__* ls_acc_io; int ls_acc_oxid; } ;
typedef TYPE_1__ ocs_node_t ;
typedef scalar_t__ ocs_node_send_ls_acc_e ;
struct TYPE_7__ {TYPE_1__* node; } ;
typedef TYPE_2__ ocs_io_t ;
struct TYPE_8__ {int d_id; int ox_id; } ;
typedef TYPE_3__ fc_header_t ;


 scalar_t__ OCS_NODE_SEND_LS_ACC_NONE ;
 int fc_be24toh (int ) ;
 int ocs_assert (int) ;
 int ocs_be16toh (int ) ;

void
ocs_send_ls_acc_after_attach(ocs_io_t *io, fc_header_t *hdr, ocs_node_send_ls_acc_e ls)
{
 ocs_node_t *node = io->node;
 uint16_t ox_id = ocs_be16toh(hdr->ox_id);

 ocs_assert(node->send_ls_acc == OCS_NODE_SEND_LS_ACC_NONE);

 node->ls_acc_oxid = ox_id;
 node->send_ls_acc = ls;
 node->ls_acc_io = io;
 node->ls_acc_did = fc_be24toh(hdr->d_id);
}
