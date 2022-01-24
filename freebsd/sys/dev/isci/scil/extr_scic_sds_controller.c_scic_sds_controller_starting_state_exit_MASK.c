#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * phy_startup_timer; int /*<<< orphan*/  timeout_timer; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC2(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   FUNC1(object, this_controller->timeout_timer);

   // We are done with this timer since we are exiting the starting
   // state so remove it
   FUNC0(
      this_controller,
      this_controller->phy_startup_timer
   );

   this_controller->phy_startup_timer = NULL;
}