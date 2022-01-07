
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_IO_REQUEST_HANDLE_T ;
typedef int SCIC_IO_SSP_PARAMETERS_T ;


 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int sci_base_object_get_logger (int ) ;

SCI_STATUS scic_io_request_construct_advanced_ssp(
   SCI_IO_REQUEST_HANDLE_T scic_io_request,
   SCIC_IO_SSP_PARAMETERS_T * io_parameters
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(scic_io_request),
      SCIC_LOG_OBJECT_SSP_IO_REQUEST,
      "scic_io_request_construct_advanced_ssp(0x%x, 0x%x) enter\n",
      io_parameters, scic_io_request
   ));


   return SCI_FAILURE;
}
