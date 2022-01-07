
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;


 int SCI_FAILURE_INVALID_STATE ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_remote_device_ready_cmd_substate_start_io_handler(
   SCI_BASE_REMOTE_DEVICE_T * device,
   SCI_BASE_REQUEST_T * request
)
{
   return SCI_FAILURE_INVALID_STATE;
}
