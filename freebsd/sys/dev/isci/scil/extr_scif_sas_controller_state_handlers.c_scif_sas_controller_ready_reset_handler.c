
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int scif_sas_controller_execute_reset (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_ready_reset_handler(
   SCI_BASE_CONTROLLER_T * controller
)
{
   return scif_sas_controller_execute_reset((SCIF_SAS_CONTROLLER_T*)controller);
}
