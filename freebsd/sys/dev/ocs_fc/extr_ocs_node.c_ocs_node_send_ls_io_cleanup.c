
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_t ;
struct TYPE_5__ {scalar_t__ send_ls_acc; TYPE_3__* ls_acc_io; int ls_acc_oxid; int display_name; int * ocs; } ;
typedef TYPE_1__ ocs_node_t ;
struct TYPE_6__ {int * hio; } ;


 scalar_t__ OCS_NODE_SEND_LS_ACC_NONE ;
 int ocs_assert (TYPE_3__*) ;
 int ocs_els_io_free (TYPE_3__*) ;
 int ocs_log_debug (int *,char*,int ,int ) ;

void
ocs_node_send_ls_io_cleanup(ocs_node_t *node)
{
 ocs_t *ocs = node->ocs;

 if (node->send_ls_acc != OCS_NODE_SEND_LS_ACC_NONE) {
  ocs_assert(node->ls_acc_io);
  ocs_log_debug(ocs, "[%s] cleaning up LS_ACC oxid=0x%x\n",
   node->display_name, node->ls_acc_oxid);

  node->ls_acc_io->hio = ((void*)0);
  ocs_els_io_free(node->ls_acc_io);
  node->send_ls_acc = OCS_NODE_SEND_LS_ACC_NONE;
  node->ls_acc_io = ((void*)0);
 }
}
