#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  available_remote_nodes; } ;
struct TYPE_4__ {scalar_t__ reserved_tci; scalar_t__ reserved_rni; TYPE_3__* owning_controller; } ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 scalar_t__ SCU_DUMMY_INDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static
void FUNC2(
   SCIC_SDS_PORT_T * this_port
)
{
   if (this_port->reserved_tci != SCU_DUMMY_INDEX)
   {
      FUNC0(
         this_port->owning_controller, this_port->reserved_tci
      );
   }

   if (this_port->reserved_rni != SCU_DUMMY_INDEX)
   {
      FUNC1(
         &this_port->owning_controller->available_remote_nodes, 1, this_port->reserved_rni
      );
   }

   this_port->reserved_rni = SCU_DUMMY_INDEX;
   this_port->reserved_tci = SCU_DUMMY_INDEX;
}