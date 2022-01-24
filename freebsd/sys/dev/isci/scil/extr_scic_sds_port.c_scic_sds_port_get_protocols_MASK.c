#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U8 ;
struct TYPE_10__ {int /*<<< orphan*/ ** phy_table; } ;
struct TYPE_8__ {scalar_t__ all; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef  TYPE_2__ SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T ;
typedef  TYPE_3__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SCI_MAX_PHYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static
void FUNC3(
   SCIC_SDS_PORT_T                            * this_port,
   SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T * protocols
)
{
   U8 index;

   FUNC0((
      FUNC1(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_get_protocols(0x%x, 0x%x) enter\n",
      this_port, protocols
   ));

   protocols->u.all = 0;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if (this_port->phy_table[index] != NULL)
      {
         FUNC2(this_port->phy_table[index], protocols);
      }
   }
}