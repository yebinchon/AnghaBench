
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ** requesters; int phys_waiting; } ;
struct TYPE_8__ {TYPE_1__ power_control; } ;
struct TYPE_7__ {size_t phy_index; } ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;
typedef TYPE_3__ SCIC_SDS_CONTROLLER_T ;


 int ASSERT (int ) ;

void scic_sds_controller_power_control_queue_remove(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCIC_SDS_PHY_T *the_phy
)
{
   ASSERT (the_phy != ((void*)0));

   if (this_controller->power_control.requesters[the_phy->phy_index] != ((void*)0))
   {
      this_controller->power_control.phys_waiting--;
   }

   this_controller->power_control.requesters[the_phy->phy_index] = ((void*)0);
}
