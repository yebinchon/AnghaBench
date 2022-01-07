
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SCI_STATUS ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int SCI_MAX_PORTS ;
 int SCI_SUCCESS ;

SCI_STATUS scic_controller_get_max_ports(
   SCI_CONTROLLER_HANDLE_T controller,
   U8 * count
)
{
   *count = SCI_MAX_PORTS;
   return SCI_SUCCESS;
}
