#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct SCIC_SDS_REQUEST {int dummy; } ;
struct SCIC_SDS_REMOTE_NODE_CONTEXT {int /*<<< orphan*/  state_machine; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ; 
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ; 
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC3(
   struct SCIC_SDS_REMOTE_NODE_CONTEXT * this_rnc,
   struct SCIC_SDS_REQUEST             * the_request
)
{
   FUNC0((
      FUNC1(this_rnc->device),
      SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
         SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
         SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
      "SCIC Remote Node Context 0x%x requested to start task 0x%x while in wrong state %d\n",
      this_rnc, the_request, FUNC2(&this_rnc->state_machine)
         ));

   return SCI_FAILURE;
}