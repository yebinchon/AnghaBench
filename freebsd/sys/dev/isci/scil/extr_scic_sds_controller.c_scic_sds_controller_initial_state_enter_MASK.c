#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_5__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_2__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_INITIAL ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC2(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   FUNC1(
      this_controller, SCI_BASE_CONTROLLER_STATE_INITIAL);

   FUNC0(
      &this_controller->parent.state_machine, SCI_BASE_CONTROLLER_STATE_RESET);
}