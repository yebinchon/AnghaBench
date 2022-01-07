
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int sector_count; } ;
struct TYPE_7__ {scalar_t__ protocol; } ;
struct TYPE_8__ {int ncq_tag; TYPE_1__ sequence; } ;
struct TYPE_9__ {TYPE_2__ stp; int core_object; int device; } ;
struct TYPE_10__ {TYPE_3__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef TYPE_4__ SCIF_SAS_IO_REQUEST_T ;
typedef TYPE_5__ SATA_FIS_REG_H2D_T ;


 scalar_t__ SAT_PROTOCOL_FPDMA ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_SAS_INVALID_NCQ_TAG ;
 int SCI_FAILURE_NO_NCQ_TAG_AVAILABLE ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (int *) ;
 TYPE_5__* scic_stp_io_request_get_h2d_reg_address (int ) ;
 int scic_stp_io_request_set_ncq_tag (int ,int) ;
 int scif_sas_stp_remote_device_allocate_ncq_tag (int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_stp_io_request_constructed_start_handler(
   SCI_BASE_REQUEST_T * io_request
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T *) io_request;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(io_request),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_stp_io_request_constructed_start_handler(0x%x) enter\n",
      io_request
   ));

   if (fw_io->parent.stp.sequence.protocol == SAT_PROTOCOL_FPDMA)
   {
      SATA_FIS_REG_H2D_T * fis;


      fw_io->parent.stp.ncq_tag = scif_sas_stp_remote_device_allocate_ncq_tag(
                                     fw_io->parent.device
                                  );

      if (fw_io->parent.stp.ncq_tag == SCIF_SAS_INVALID_NCQ_TAG)
         return SCI_FAILURE_NO_NCQ_TAG_AVAILABLE;



      fis = scic_stp_io_request_get_h2d_reg_address(fw_io->parent.core_object);
      fis->sector_count = (fw_io->parent.stp.ncq_tag << 3);



      scic_stp_io_request_set_ncq_tag(
         fw_io->parent.core_object, fw_io->parent.stp.ncq_tag
      );
   }

   return SCI_SUCCESS;
}
