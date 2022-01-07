
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* num_elem; void* elem_size; scalar_t__ ci_register_abs; scalar_t__ array_virt_addr; scalar_t__ array_dma_addr; } ;
struct TYPE_5__ {void* num_elem; void* elem_size; scalar_t__ pi_register_abs; scalar_t__ array_virt_addr; scalar_t__ array_dma_addr; } ;
struct TYPE_7__ {TYPE_2__ admin_ob_queue; TYPE_1__ admin_ib_queue; } ;
typedef TYPE_3__ pqisrc_softstate_t ;


 int DBG_INFO (char*,void*) ;

void pqisrc_print_adminq_config(pqisrc_softstate_t *softs)
{
 DBG_INFO(" softs->admin_ib_queue.array_dma_addr : %p\n",
  (void*)softs->admin_ib_queue.array_dma_addr);
 DBG_INFO(" softs->admin_ib_queue.array_virt_addr : %p\n",
  (void*)softs->admin_ib_queue.array_virt_addr);
 DBG_INFO(" softs->admin_ib_queue.num_elem : %d\n",
  softs->admin_ib_queue.num_elem);
 DBG_INFO(" softs->admin_ib_queue.elem_size : %d\n",
  softs->admin_ib_queue.elem_size);
 DBG_INFO(" softs->admin_ob_queue.array_dma_addr : %p\n",
  (void*)softs->admin_ob_queue.array_dma_addr);
 DBG_INFO(" softs->admin_ob_queue.array_virt_addr : %p\n",
  (void*)softs->admin_ob_queue.array_virt_addr);
 DBG_INFO(" softs->admin_ob_queue.num_elem : %d\n",
  softs->admin_ob_queue.num_elem);
 DBG_INFO(" softs->admin_ob_queue.elem_size : %d\n",
  softs->admin_ob_queue.elem_size);
 DBG_INFO(" softs->admin_ib_queue.pi_register_abs : %p\n",
  (void*)softs->admin_ib_queue.pi_register_abs);
 DBG_INFO(" softs->admin_ob_queue.ci_register_abs : %p\n",
  (void*)softs->admin_ob_queue.ci_register_abs);
}
