
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int protocol; } ;
typedef scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef int SCIC_TRANSPORT_PROTOCOL ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;



SCIC_TRANSPORT_PROTOCOL scic_io_request_get_protocol(
   SCI_IO_REQUEST_HANDLE_T scic_io_request
)
{
   SCIC_SDS_REQUEST_T * this_request = (SCIC_SDS_REQUEST_T * )scic_io_request;
   return this_request->protocol;
}
