
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_2__ {int * domains; } ;
typedef int SCI_STATUS ;
typedef int * SCI_DOMAIN_HANDLE_T ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 int SCI_FAILURE_INVALID_PARAMETER_VALUE ;
 int SCI_FAILURE_INVALID_PORT ;
 scalar_t__ SCI_INVALID_HANDLE ;
 size_t SCI_MAX_PORTS ;
 int SCI_SUCCESS ;

SCI_STATUS scif_controller_get_domain_handle(
   SCI_CONTROLLER_HANDLE_T controller,
   U8 port_index,
   SCI_DOMAIN_HANDLE_T * domain_handle
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*) controller;


   if (controller == SCI_INVALID_HANDLE)
      return SCI_FAILURE_INVALID_PARAMETER_VALUE;


   if (port_index < SCI_MAX_PORTS)
   {
      *domain_handle = &fw_controller->domains[port_index];
      return SCI_SUCCESS;
   }

   return SCI_FAILURE_INVALID_PORT;
}
