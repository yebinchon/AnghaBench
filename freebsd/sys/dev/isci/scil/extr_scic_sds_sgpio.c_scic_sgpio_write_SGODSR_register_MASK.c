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
typedef  int U8 ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int SCI_MAX_PHYS ; 
 int /*<<< orphan*/ * output_data_select ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
void FUNC1(
   SCIC_SDS_CONTROLLER_T *controller,
   U32 phy_mask,
   U32 value
)
{
   U8 phy_index;

   for (phy_index = 0; phy_index < SCI_MAX_PHYS; phy_index++)
   {
      if (phy_mask >> phy_index & 1)
      {
          FUNC0(
             controller, output_data_select[phy_index], value
          );
      }
   }
}