
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t U8 ;
typedef int U32 ;
struct TYPE_4__ {int * phy_table; int * port_table; int restrict_completions; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCIC_SDS_PHY_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int FALSE ;
 size_t SCI_MAX_PHYS ;
 size_t SCI_MAX_PORTS ;
 int SCI_SUCCESS ;
 int SCU_SAS_LLSTA_DWORD_SYNCA_BIT ;
 int SCU_SAS_LLSTA_READ (int *) ;
 int scic_sds_controller_initialize_completion_queue (TYPE_1__*) ;
 int scic_sds_controller_initialize_unsolicited_frame_queue (TYPE_1__*) ;
 int scic_sds_phy_restart_starting_state (int *) ;
 int scic_sds_port_resume_port_task_scheduler (int *) ;

SCI_STATUS scic_controller_resume(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIC_SDS_CONTROLLER_T * this_controller = (SCIC_SDS_CONTROLLER_T*)controller;
   U8 index;


   scic_sds_controller_initialize_completion_queue(this_controller);
   scic_sds_controller_initialize_unsolicited_frame_queue(this_controller);

   this_controller->restrict_completions = FALSE;



   for (index = 0; index < SCI_MAX_PORTS; index++)
      scic_sds_port_resume_port_task_scheduler(
         &(this_controller->port_table[index]));




   for (index = 0; index < SCI_MAX_PHYS; index ++)
   {
      SCIC_SDS_PHY_T * curr_phy = &this_controller->phy_table[index];
      U32 link_layer_status = SCU_SAS_LLSTA_READ(curr_phy);

      if ((link_layer_status & SCU_SAS_LLSTA_DWORD_SYNCA_BIT) == 0)
      {


         scic_sds_phy_restart_starting_state(curr_phy);
      }
   }

   return SCI_SUCCESS;
}
