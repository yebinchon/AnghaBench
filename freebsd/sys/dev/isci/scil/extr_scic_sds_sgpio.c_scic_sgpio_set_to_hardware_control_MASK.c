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
typedef  size_t U8 ;
typedef  int /*<<< orphan*/  U32 ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t SCI_MAX_PHYS ; 
 int /*<<< orphan*/  SGPIO_HARDWARE_CONTROL ; 
 int /*<<< orphan*/  SGPIO_SOFTWARE_CONTROL ; 
 int /*<<< orphan*/ * output_data_select ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(
   SCI_CONTROLLER_HANDLE_T controller,
   BOOL is_hardware_controlled
)
{
   SCIC_SDS_CONTROLLER_T * core_controller = (SCIC_SDS_CONTROLLER_T *) controller;
   U8 i;
   U32 output_value;

   //turn on hardware control for LED's
   if(is_hardware_controlled)
   {
      output_value = SGPIO_HARDWARE_CONTROL;
   }
   else //turn off hardware control
   {
      output_value = SGPIO_SOFTWARE_CONTROL;
   }

   for(i = 0; i < SCI_MAX_PHYS; i++)
   {
      FUNC0(
         core_controller, output_data_select[i], output_value);
   }
}