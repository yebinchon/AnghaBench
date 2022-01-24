#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U32 ;
struct TYPE_4__ {scalar_t__ next_pair_lower; scalar_t__ next_pair_upper; int /*<<< orphan*/  B; int /*<<< orphan*/  A; } ;
typedef  TYPE_1__ SCU_SGL_ELEMENT_PAIR_T ;
typedef  int /*<<< orphan*/  SCI_PHYSICAL_ADDRESS ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(
   SCIC_SDS_REQUEST_T *this_request
)
{
   void                   *os_sge;
   void                   *os_handle;
   SCI_PHYSICAL_ADDRESS    physical_address;
   U32                     sgl_pair_index = 0;
   SCU_SGL_ELEMENT_PAIR_T *scu_sgl_list   = NULL;
   SCU_SGL_ELEMENT_PAIR_T *previous_pair  = NULL;

   os_handle = FUNC8(this_request);
   FUNC4(os_handle, NULL, &os_sge);

   while (os_sge != NULL)
   {
      scu_sgl_list =
         FUNC7(this_request, sgl_pair_index);

      FUNC0(os_handle, scu_sgl_list->A, os_sge);

      FUNC4(os_handle, os_sge, &os_sge);

      if (os_sge != NULL)
      {
         FUNC0(os_handle, scu_sgl_list->B, os_sge);

         FUNC4(os_handle, os_sge, &os_sge);
      }
      else
      {
         FUNC1(scu_sgl_list->B);
      }

      if (previous_pair != NULL)
      {
         FUNC5(
            FUNC6(this_request),
            this_request,
            scu_sgl_list,
            &physical_address
         );

         previous_pair->next_pair_upper =
            FUNC3(physical_address);
         previous_pair->next_pair_lower =
            FUNC2(physical_address);
      }

      previous_pair = scu_sgl_list;
      sgl_pair_index++;
   }

   if (scu_sgl_list != NULL)
   {
      scu_sgl_list->next_pair_upper = 0;
      scu_sgl_list->next_pair_lower = 0;
   }
}