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
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ U32 ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  this_controler ; 

__attribute__((used)) static
void FUNC6(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIC_SDS_CONTROLLER_T *this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC0((
      FUNC4(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_legacy_completion_handler(0x%d) enter\n",
      controller
   ));

   FUNC5(controller);

   FUNC2(this_controller, 0x00000000);

#ifdef IMR_READ_FENCE
   {
      volatile U32 int_mask_value = 0;
      ULONG count = 0;

      /*
       * Temporary code since we have seen with legacy interrupts
       * that interrupts are still masked after clearing the mask
       * above. This may be an Arlington problem or it may be an
       * old driver problem.  Presently this code is turned off
       * since we have not seen this problem recently.
       */
      do
      {
         int_mask_value = SMU_IMR_READ(this_controler);

         if (count++ > 10)
         {
            #ifdef ALLOW_ENTER_DEBUGGER
            __debugbreak();
            #endif
            break;
         }
      } while (int_mask_value != 0);
   }
#endif
}