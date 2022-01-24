#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ attached_stp_target; } ;
struct TYPE_12__ {TYPE_1__ bits; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
struct TYPE_17__ {int /*<<< orphan*/  owning_port; scalar_t__ is_direct_attached; TYPE_3__ target_protocols; } ;
struct TYPE_16__ {int /*<<< orphan*/  remote_node_index; TYPE_8__* device; } ;
struct TYPE_14__ {int /*<<< orphan*/  is_valid; } ;
struct TYPE_15__ {TYPE_4__ ssp; } ;
typedef  TYPE_5__ SCU_REMOTE_NODE_CONTEXT_T ;
typedef  TYPE_6__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCU_CONTEXT_COMMAND_POST_RNC_32 ; 
 int /*<<< orphan*/  SCU_CONTEXT_COMMAND_POST_RNC_96 ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC4(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc
)
{
   SCU_REMOTE_NODE_CONTEXT_T *rnc_buffer;

   rnc_buffer = FUNC0(
      FUNC2(this_rnc->device),
      this_rnc->remote_node_index
         );

   rnc_buffer->ssp.is_valid = TRUE;

   if (
      !this_rnc->device->is_direct_attached
         && this_rnc->device->target_protocols.u.bits.attached_stp_target
         )
   {
      FUNC3(
         this_rnc->device,
         SCU_CONTEXT_COMMAND_POST_RNC_96
            );
   }
   else
   {
      FUNC3(
         this_rnc->device,
         SCU_CONTEXT_COMMAND_POST_RNC_32
            );

      if (this_rnc->device->is_direct_attached)
      {
         FUNC1(
            this_rnc->device->owning_port,
            this_rnc->remote_node_index
               );
      }
   }
}