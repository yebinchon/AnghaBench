
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int user_parameters; } ;
struct TYPE_6__ {int is_sata_ncq_enabled; int max_ncq_depth; int is_sata_standby_timer_enabled; int is_non_zero_buffer_offsets_enabled; scalar_t__ reset_type; int clear_affiliation_during_controller_stop; } ;
struct TYPE_7__ {TYPE_1__ sas; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_2__ SCIF_USER_PARAMETERS_T ;
typedef TYPE_3__ SCIF_SAS_CONTROLLER_T ;


 int SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 scalar_t__ SCI_SAS_ABORT_TASK ;
 scalar_t__ SCI_SAS_ABORT_TASK_SET ;
 scalar_t__ SCI_SAS_CLEAR_ACA ;
 scalar_t__ SCI_SAS_CLEAR_TASK_SET ;
 scalar_t__ SCI_SAS_HARD_RESET ;
 scalar_t__ SCI_SAS_I_T_NEXUS_RESET ;
 scalar_t__ SCI_SAS_LOGICAL_UNIT_RESET ;
 scalar_t__ SCI_SAS_QUERY_ASYNCHRONOUS_EVENT ;
 scalar_t__ SCI_SAS_QUERY_TASK ;
 scalar_t__ SCI_SAS_QUERY_TASK_SET ;
 int SCI_SUCCESS ;
 int memcpy (int *,TYPE_2__*,int) ;

SCI_STATUS scif_user_parameters_set(
   SCI_CONTROLLER_HANDLE_T controller,
   SCIF_USER_PARAMETERS_T * scif_parms
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*) controller;



   if (scif_parms->sas.is_sata_ncq_enabled != 1 && scif_parms->sas.is_sata_ncq_enabled != 0)
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;

   if (scif_parms->sas.max_ncq_depth < 1 || scif_parms->sas.max_ncq_depth > 32)
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;

   if (scif_parms->sas.is_sata_standby_timer_enabled != 1
       && scif_parms->sas.is_sata_standby_timer_enabled != 0)
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;

   if (scif_parms->sas.is_non_zero_buffer_offsets_enabled != 1
       && scif_parms->sas.is_non_zero_buffer_offsets_enabled != 0)
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;

   if (scif_parms->sas.reset_type != SCI_SAS_ABORT_TASK
       && scif_parms->sas.reset_type != SCI_SAS_ABORT_TASK_SET
       && scif_parms->sas.reset_type != SCI_SAS_CLEAR_TASK_SET
       && scif_parms->sas.reset_type != SCI_SAS_LOGICAL_UNIT_RESET
       && scif_parms->sas.reset_type != SCI_SAS_I_T_NEXUS_RESET
       && scif_parms->sas.reset_type != SCI_SAS_CLEAR_ACA
       && scif_parms->sas.reset_type != SCI_SAS_QUERY_TASK
       && scif_parms->sas.reset_type != SCI_SAS_QUERY_TASK_SET
       && scif_parms->sas.reset_type != SCI_SAS_QUERY_ASYNCHRONOUS_EVENT
       && scif_parms->sas.reset_type != SCI_SAS_HARD_RESET)
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;

   if (scif_parms->sas.clear_affiliation_during_controller_stop != 1
       && scif_parms->sas.clear_affiliation_during_controller_stop !=0)
       return SCI_FAILURE_INVALID_PARAMETER_VALUE;

   memcpy((&fw_controller->user_parameters), scif_parms, sizeof(*scif_parms));




   return SCI_SUCCESS;
}
