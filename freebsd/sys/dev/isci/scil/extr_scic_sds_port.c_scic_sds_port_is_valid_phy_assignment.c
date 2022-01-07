
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_11__ {int physical_port_index; TYPE_4__* owning_controller; int ** phy_table; } ;
struct TYPE_8__ {TYPE_1__* phys; } ;
struct TYPE_9__ {TYPE_2__ sds1; } ;
struct TYPE_10__ {TYPE_3__ user_parameters; } ;
struct TYPE_7__ {scalar_t__ max_speed_generation; } ;
typedef TYPE_5__ SCIC_SDS_PORT_T ;
typedef int BOOL ;


 int FALSE ;
 int SCI_MAX_PHYS ;
 int TRUE ;

BOOL scic_sds_port_is_valid_phy_assignment(
   SCIC_SDS_PORT_T *this_port,
   U32 phy_index
)
{

   U32 existing_phy_index = SCI_MAX_PHYS;
   U32 index;

   if ((this_port->physical_port_index == 1) && (phy_index != 1))
   {
      return FALSE;
   }

   if (this_port->physical_port_index == 3 && phy_index != 3)
   {
      return FALSE;
   }

   if (
          (this_port->physical_port_index == 2)
       && ((phy_index == 0) || (phy_index == 1))
      )
   {
      return FALSE;
   }

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if ( (this_port->phy_table[index] != ((void*)0))
         && (index != phy_index) )
      {
         existing_phy_index = index;
      }
   }



   if (
         (existing_phy_index < SCI_MAX_PHYS)
      && (this_port->owning_controller->user_parameters.sds1.phys[
             phy_index].max_speed_generation !=
          this_port->owning_controller->user_parameters.sds1.phys[
             existing_phy_index].max_speed_generation)
      )
      return FALSE;

   return TRUE;
}
