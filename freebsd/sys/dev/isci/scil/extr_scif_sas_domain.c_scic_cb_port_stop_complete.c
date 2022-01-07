
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_PORT_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (int *) ;
 scalar_t__ sci_object_get_association (int ) ;

void scic_cb_port_stop_complete(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_PORT_HANDLE_T port,
   SCI_STATUS completion_status
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger((SCIF_SAS_DOMAIN_T*)sci_object_get_association(port)),
      SCIF_LOG_OBJECT_DOMAIN,
      "scic_cb_port_stop_complete(0x%x, 0x%x, 0x%x) enter\n",
      controller, port, completion_status
   ));
}
