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
typedef  int U32 ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  IDLE_ENABLE ; 
 int /*<<< orphan*/  REGCLK_ENABLE ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_READY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TXCLK_ENABLE ; 
 int /*<<< orphan*/  XCLK_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC5(
   SCI_BASE_OBJECT_T *object
)
{
   U32 clock_gating_unit_value;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   FUNC4(
      this_controller, SCI_BASE_CONTROLLER_STATE_READY);

   /**
    * enable clock gating for power control of the scu unit
    */
   clock_gating_unit_value = FUNC1(this_controller);

   clock_gating_unit_value &= ~( FUNC0(REGCLK_ENABLE)
                               | FUNC0(TXCLK_ENABLE)
                               | FUNC0(XCLK_ENABLE) );
   clock_gating_unit_value |= FUNC0(IDLE_ENABLE);

   FUNC2(this_controller, clock_gating_unit_value);

   //set the default interrupt coalescence number and timeout value.
   FUNC3(
      this_controller, 0x10, 250);
}