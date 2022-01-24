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
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_FAILURE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int SCU_MAX_ZPT_DWORD_INDEX ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

SCI_STATUS FUNC3(
   SCI_CONTROLLER_HANDLE_T   controller,
   U32                       offset,
   U32                       value
)
{
   U32 zpt_index;

   if (offset < FUNC0(controller))
   {
      SCIC_SDS_CONTROLLER_T * scic_controller = (SCIC_SDS_CONTROLLER_T *)controller;

      if(offset <= SCU_MAX_ZPT_DWORD_INDEX)
      {
         zpt_index = offset + (offset - (offset % 4)) + 4;

         FUNC1(scic_controller,zpt_index,value);
      }
      else //offset > SCU_MAX_ZPT_DWORD_INDEX
      {
         offset = offset - 132;

         zpt_index = offset + (offset - (offset % 4)) + 4;

         FUNC2(scic_controller,zpt_index,value);

      }

      return SCI_SUCCESS;
   }
   else
   {
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;
   }
}