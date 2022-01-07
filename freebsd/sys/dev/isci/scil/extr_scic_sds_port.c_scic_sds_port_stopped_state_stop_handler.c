
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_PORT_T ;


 int SCI_SUCCESS ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_stopped_state_stop_handler(
   SCI_BASE_PORT_T *port
)
{

   return SCI_SUCCESS;
}
