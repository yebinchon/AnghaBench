
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SCIC_SDS_REQUEST {int dummy; } ;
struct SCIC_SDS_REMOTE_DEVICE {int dummy; } ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_PORT_T ;


 int SCI_SUCCESS ;
 int scic_sds_port_decrement_request_count (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_ready_substate_complete_io_handler(
   SCIC_SDS_PORT_T *port,
   struct SCIC_SDS_REMOTE_DEVICE *device,
   struct SCIC_SDS_REQUEST *io_request
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   scic_sds_port_decrement_request_count(this_port);

   return SCI_SUCCESS;
}
