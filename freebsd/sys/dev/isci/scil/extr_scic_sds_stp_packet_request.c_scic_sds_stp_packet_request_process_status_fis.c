
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_REQUEST_T ;
typedef TYPE_1__ SATA_FIS_REG_D2H_T ;


 int ATA_STATUS_REG_ERROR_BIT ;
 int SCI_FAILURE_IO_RESPONSE_VALID ;
 int SCI_SUCCESS ;

SCI_STATUS scic_sds_stp_packet_request_process_status_fis(
   SCIC_SDS_REQUEST_T * this_request,
   SATA_FIS_REG_D2H_T * status_fis
)
{
   SCI_STATUS status = SCI_SUCCESS;


   if (status_fis->status & ATA_STATUS_REG_ERROR_BIT)
      status = SCI_FAILURE_IO_RESPONSE_VALID;

   return status;
}
