
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_2__ {size_t logical_port_entries; int * port_table; } ;
typedef int SCI_STATUS ;
typedef int * SCI_PORT_HANDLE_T ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_FAILURE_INVALID_PORT ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (scalar_t__) ;

SCI_STATUS scic_controller_get_port_handle(
   SCI_CONTROLLER_HANDLE_T controller,
   U8 port_index,
   SCI_PORT_HANDLE_T * port_handle
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_controller_get_port_handle(0x%x, 0x%x, 0x%x) enter\n",
      controller, port_index, port_handle
   ));

   if (port_index < this_controller->logical_port_entries)
   {
      *port_handle = &this_controller->port_table[port_index];

      return SCI_SUCCESS;
   }

   return SCI_FAILURE_INVALID_PORT;
}
