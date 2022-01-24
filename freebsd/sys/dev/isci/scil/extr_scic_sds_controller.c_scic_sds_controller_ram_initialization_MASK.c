#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_17__ {int /*<<< orphan*/  physical_address; } ;
struct TYPE_16__ {int /*<<< orphan*/  physical_address; } ;
struct TYPE_20__ {TYPE_2__ address_table; TYPE_1__ headers; } ;
struct TYPE_19__ {TYPE_5__ uf_control; TYPE_3__* memory_descriptors; int /*<<< orphan*/ * task_context_table; int /*<<< orphan*/ * remote_node_context_table; int /*<<< orphan*/ * completion_queue; } ;
struct TYPE_18__ {int /*<<< orphan*/  physical_address; scalar_t__ virtual_address; } ;
typedef  int /*<<< orphan*/  SCU_TASK_CONTEXT_T ;
typedef  int /*<<< orphan*/  SCU_REMOTE_NODE_CONTEXT_T ;
typedef  TYPE_3__ SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef  TYPE_4__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int MULTI_BIT_ERROR_REPORTING_ENABLE ; 
 size_t SCU_MDE_COMPLETION_QUEUE ; 
 size_t SCU_MDE_REMOTE_NODE_CONTEXT ; 
 size_t SCU_MDE_TASK_CONTEXT ; 
 size_t SCU_MDE_UF_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int SIGNLE_BIT_ERROR_CORRECTION_ENABLE ; 
 int SINGLE_BIT_ERROR_REPORTING_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_3__*,TYPE_4__*) ; 

void FUNC8(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   SCI_PHYSICAL_MEMORY_DESCRIPTOR_T *mde;

   // The completion queue is actually placed in cacheable memory
   // Therefore it no longer comes out of memory in the MDL.
   mde = &this_controller->memory_descriptors[SCU_MDE_COMPLETION_QUEUE];
   this_controller->completion_queue = (U32*) mde->virtual_address;
   FUNC4(this_controller, mde->physical_address);

   // Program the location of the Remote Node Context table
   // into the SCU.
   mde = &this_controller->memory_descriptors[SCU_MDE_REMOTE_NODE_CONTEXT];
   this_controller->remote_node_context_table = (SCU_REMOTE_NODE_CONTEXT_T *)
                                                mde->virtual_address;
   FUNC6(this_controller, mde->physical_address);

   // Program the location of the Task Context table into the SCU.
   mde = &this_controller->memory_descriptors[SCU_MDE_TASK_CONTEXT];
   this_controller->task_context_table = (SCU_TASK_CONTEXT_T *)
                                         mde->virtual_address;
   FUNC5(this_controller, mde->physical_address);

   mde = &this_controller->memory_descriptors[SCU_MDE_UF_BUFFER];
   FUNC7(
      &this_controller->uf_control, mde, this_controller
   );

   // Inform the silicon as to the location of the UF headers and
   // address table.
   FUNC3(
      this_controller,
      this_controller->uf_control.headers.physical_address);
   FUNC0(
      this_controller,
      this_controller->uf_control.address_table.physical_address);

   //enable the ECC correction and detection.
   FUNC1(
      this_controller,
      (SIGNLE_BIT_ERROR_CORRECTION_ENABLE
       | MULTI_BIT_ERROR_REPORTING_ENABLE
       | SINGLE_BIT_ERROR_REPORTING_ENABLE) );
   FUNC2(
      this_controller,
      (SIGNLE_BIT_ERROR_CORRECTION_ENABLE
       | MULTI_BIT_ERROR_REPORTING_ENABLE
       | SINGLE_BIT_ERROR_REPORTING_ENABLE) );
}