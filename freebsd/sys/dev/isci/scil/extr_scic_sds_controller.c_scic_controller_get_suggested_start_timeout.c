
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;


 scalar_t__ SCIC_SDS_CONTROLLER_PHY_START_TIMEOUT ;
 int SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL ;
 scalar_t__ SCIC_SDS_SIGNATURE_FIS_TIMEOUT ;
 scalar_t__ SCI_INVALID_HANDLE ;
 int SCI_MAX_PHYS ;

U32 scic_controller_get_suggested_start_timeout(
   SCI_CONTROLLER_HANDLE_T controller
)
{

   if (controller == SCI_INVALID_HANDLE)
      return 0;
   return (SCIC_SDS_SIGNATURE_FIS_TIMEOUT
           + SCIC_SDS_CONTROLLER_PHY_START_TIMEOUT
           + ((SCI_MAX_PHYS-1) * SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL));
}
