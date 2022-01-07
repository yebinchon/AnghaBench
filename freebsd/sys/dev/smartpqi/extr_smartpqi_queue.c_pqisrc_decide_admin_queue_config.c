
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* num_elem; } ;
struct TYPE_5__ {void* num_elem; } ;
struct TYPE_7__ {TYPE_2__ admin_ob_queue; TYPE_1__ admin_ib_queue; } ;
typedef TYPE_3__ pqisrc_softstate_t ;


 void* MIN (void*,int ) ;
 int PQISRC_MAX_ADMIN_IB_QUEUE_ELEM_NUM ;
 int PQISRC_MAX_ADMIN_OB_QUEUE_ELEM_NUM ;

void pqisrc_decide_admin_queue_config(pqisrc_softstate_t *softs)
{

 softs->admin_ib_queue.num_elem = MIN(softs->admin_ib_queue.num_elem,
     PQISRC_MAX_ADMIN_IB_QUEUE_ELEM_NUM);


 softs->admin_ob_queue.num_elem = MIN(softs->admin_ob_queue.num_elem,
     PQISRC_MAX_ADMIN_OB_QUEUE_ELEM_NUM);
}
