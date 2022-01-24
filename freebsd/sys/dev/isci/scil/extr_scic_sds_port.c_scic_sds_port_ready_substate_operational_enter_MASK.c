#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U32 ;
struct TYPE_9__ {int active_phy_mask; int enabled_phy_mask; int /*<<< orphan*/ ** phy_table; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL ; 
 size_t SCI_MAX_PHYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC7(
   SCI_BASE_OBJECT_T *object
)
{
   U32 index;
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)object;

   FUNC4(
      this_port, SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL
   );

   FUNC0(
      FUNC1(this_port), this_port
   );

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if (this_port->phy_table[index] != NULL)
      {
         FUNC6(
            this_port, this_port->phy_table[index]
         );

         //if the bit at the index location for active phy mask is set and
         //enabled_phy_mask is not set then resume the phy
         if ( ( (this_port->active_phy_mask ^ this_port->enabled_phy_mask) & (1 << index) ) != 0)
         {
            FUNC3 (
               this_port,
               this_port->phy_table[index]
            );
         }
      }
   }

   FUNC5(this_port);

   // Post the dummy task for the port so the hardware can schedule
   // io correctly
   FUNC2(this_port);
}