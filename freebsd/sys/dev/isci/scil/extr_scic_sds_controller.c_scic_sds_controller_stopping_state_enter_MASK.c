#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_2__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_STOPPED ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static
void FUNC5(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   FUNC2(
      this_controller, SCI_BASE_CONTROLLER_STATE_STOPPING);

   // Stop all of the components for this controller in the reverse order
   // from which they are initialized.
   FUNC3(this_controller);
   FUNC4(this_controller);

   if (!FUNC1(this_controller))
   {
      FUNC0(
         &this_controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_STOPPED
      );
   }
}