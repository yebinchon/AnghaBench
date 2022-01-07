
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;


 int SCI_SUCCESS ;

SCI_STATUS scif_sas_io_request_constructed_start_handler(
   SCI_BASE_REQUEST_T * io_request
)
{
   return SCI_SUCCESS;
}
