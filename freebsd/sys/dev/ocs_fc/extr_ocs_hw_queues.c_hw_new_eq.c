
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int os; int eq_list; TYPE_2__** hw_eq; int sli; TYPE_3__* eq; int eq_count; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_11__ {size_t instance; int entry_count; TYPE_3__* queue; int * wq_array; int cq_list; TYPE_1__* hw; int type; } ;
typedef TYPE_2__ hw_eq_t ;
struct TYPE_12__ {int id; } ;


 int OCS_HW_MAX_NUM_WQ ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI_QTYPE_EQ ;
 int hw_cq_t ;
 int link ;
 int ocs_free (int ,TYPE_2__*,int) ;
 int ocs_list_add_tail (int *,TYPE_2__*) ;
 int ocs_list_init (int *,int ,int ) ;
 int ocs_log_debug (int ,char*,size_t,int ,int ) ;
 int ocs_log_err (int ,char*,size_t) ;
 TYPE_2__* ocs_malloc (int ,int,int) ;
 int * ocs_varray_alloc (int ,int ) ;
 int sli_eq_modify_delay (int *,TYPE_3__*,int,int ,int) ;
 scalar_t__ sli_queue_alloc (int *,int ,TYPE_3__*,int ,int *,int ) ;

hw_eq_t*
hw_new_eq(ocs_hw_t *hw, uint32_t entry_count)
{
 hw_eq_t *eq = ocs_malloc(hw->os, sizeof(*eq), OCS_M_ZERO | OCS_M_NOWAIT);

 if (eq != ((void*)0)) {
  eq->type = SLI_QTYPE_EQ;
  eq->hw = hw;
  eq->entry_count = entry_count;
  eq->instance = hw->eq_count++;
  eq->queue = &hw->eq[eq->instance];
  ocs_list_init(&eq->cq_list, hw_cq_t, link);

  eq->wq_array = ocs_varray_alloc(hw->os, OCS_HW_MAX_NUM_WQ);
  if (eq->wq_array == ((void*)0)) {
   ocs_free(hw->os, eq, sizeof(*eq));
   eq = ((void*)0);
  } else {
   if (sli_queue_alloc(&hw->sli, SLI_QTYPE_EQ, eq->queue, entry_count, ((void*)0), 0)) {
    ocs_log_err(hw->os, "EQ[%d] allocation failure\n", eq->instance);
    ocs_free(hw->os, eq, sizeof(*eq));
    eq = ((void*)0);
   } else {
    sli_eq_modify_delay(&hw->sli, eq->queue, 1, 0, 8);
    hw->hw_eq[eq->instance] = eq;
    ocs_list_add_tail(&hw->eq_list, eq);
    ocs_log_debug(hw->os, "create eq[%2d] id %3d len %4d\n", eq->instance, eq->queue->id,
     eq->entry_count);
   }
  }
 }
 return eq;
}
