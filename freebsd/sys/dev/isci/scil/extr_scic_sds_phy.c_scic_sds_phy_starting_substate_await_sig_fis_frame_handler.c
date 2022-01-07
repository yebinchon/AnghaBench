
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_15__ {int uf_control; } ;
struct TYPE_14__ {scalar_t__ fis_type; int status; } ;
struct TYPE_11__ {int signature_fis_buffer; } ;
struct TYPE_12__ {TYPE_1__ sata; } ;
struct TYPE_13__ {TYPE_2__ phy_type; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_3__ SCIC_SDS_PHY_T ;
typedef TYPE_4__ SATA_FIS_HEADER_T ;


 int ATA_STATUS_REG_BSY_BIT ;
 scalar_t__ SATA_FIS_TYPE_REGD2H ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_OBJECT_UNSOLICITED_FRAMES ;
 int SCIC_LOG_WARNING (int ) ;
 int SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_controller_copy_sata_response (int *,int *,int *) ;
 int scic_sds_controller_release_frame (TYPE_7__*,int ) ;
 TYPE_7__* scic_sds_phy_get_controller (TYPE_3__*) ;
 int scic_sds_phy_get_starting_substate_machine (TYPE_3__*) ;
 int scic_sds_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 scalar_t__ scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_starting_substate_await_sig_fis_frame_handler(
   SCIC_SDS_PHY_T *this_phy,
   U32 frame_index
)
{
   SCI_STATUS result;
   U32 * frame_words;
   SATA_FIS_HEADER_T * fis_frame_header;
   U32 * fis_frame_data;

   result = scic_sds_unsolicited_frame_control_get_header(
               &(scic_sds_phy_get_controller(this_phy)->uf_control),
               frame_index,
               (void **)&frame_words);

   if (result != SCI_SUCCESS)
   {
      return result;
   }

   fis_frame_header = (SATA_FIS_HEADER_T *)frame_words;

   if (
         (fis_frame_header->fis_type == SATA_FIS_TYPE_REGD2H)
      && !(fis_frame_header->status & ATA_STATUS_REG_BSY_BIT)
      )
   {
      scic_sds_unsolicited_frame_control_get_buffer(
         &(scic_sds_phy_get_controller(this_phy)->uf_control),
         frame_index,
         (void **)&fis_frame_data
      );

      scic_sds_controller_copy_sata_response(
         &this_phy->phy_type.sata.signature_fis_buffer,
         frame_words,
         fis_frame_data
      );


      sci_base_state_machine_change_state(
         scic_sds_phy_get_starting_substate_machine(this_phy),
         SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL
         );

      result = SCI_SUCCESS;
   }
   else
   {
      SCIC_LOG_WARNING((
         sci_base_object_get_logger(this_phy),
         SCIC_LOG_OBJECT_PHY | SCIC_LOG_OBJECT_UNSOLICITED_FRAMES,
         "PHY starting substate machine received unexpected frame id %x\n",
         frame_index
      ));
   }


   scic_sds_controller_release_frame(
      scic_sds_phy_get_controller(this_phy), frame_index
      );

   return result;
}
