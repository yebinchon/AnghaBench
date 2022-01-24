#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ error; } ;
struct TYPE_4__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_2__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_CONTROLLER_FATAL_MEMORY_ERROR ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC3(
   SCI_BASE_CONTROLLER_T *controller
)
{
    SCIC_SDS_CONTROLLER_T *this_controller;
    this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

    if (this_controller->parent.error == SCI_CONTROLLER_FATAL_MEMORY_ERROR) {
        FUNC0(*(
           FUNC1(controller),
           SCIC_LOG_OBJECT_CONTROLLER,
           "scic_sds_controller_resetting_state_enter(0x%x) enter\n not allowed with fatal memory error",
           controller
        ));

        return SCI_FAILURE;
    } else {
        return FUNC2(controller);
    }
}