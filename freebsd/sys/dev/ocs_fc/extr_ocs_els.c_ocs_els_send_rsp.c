
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int els_cmpl_cnt; } ;
typedef TYPE_1__ ocs_node_t ;
struct TYPE_7__ {int wire_len; TYPE_1__* node; } ;
typedef TYPE_2__ ocs_io_t ;
typedef int int32_t ;


 int ocs_els_acc_cb ;
 int ocs_els_make_active (TYPE_2__*) ;
 int ocs_scsi_io_dispatch (TYPE_2__*,int ) ;

__attribute__((used)) static int32_t
ocs_els_send_rsp(ocs_io_t *els, uint32_t rsplen)
{
 ocs_node_t *node = els->node;


 node->els_cmpl_cnt++;


 ocs_els_make_active(els);

 els->wire_len = rsplen;
 return ocs_scsi_io_dispatch(els, ocs_els_acc_cb);
}
