#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int U32 ;
typedef  int U16 ;
struct TYPE_9__ {scalar_t__ ata_command_sent_for_cmp; int current_mode_page_processed; } ;
struct TYPE_10__ {TYPE_1__ process_state; } ;
struct TYPE_11__ {scalar_t__ state; int allocation_length; TYPE_2__ command_specific_data; } ;
typedef  TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  scalar_t__ SATI_STATUS ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 void* SATI_SEQUENCE_STATE_FINAL ; 
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ; 
 scalar_t__ SATI_SEQUENCE_STATE_INITIAL ; 
 scalar_t__ SATI_SEQUENCE_STATE_TRANSLATE_DATA ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_PARM_LIST ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,void*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,void*,void*,int,int) ; 
 scalar_t__ FUNC7 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SATI_STATUS FUNC9(
   SATI_TRANSLATOR_SEQUENCE_T   * sequence,
   void                         * scsi_io,
   void                         * ata_io,
   U32                          cdb_size
)
{
   SATI_STATUS status = SATI_FAILURE_CHECK_RESPONSE_DATA;
   U32 mode_page_offset;
   U32 block_descriptor_length;
   U32 index;
   U16 data_transfer_length;
   U8 current_mode_parameters[8]={0,0,0,0,0,0,0,0};
   U8 * cdb = FUNC0(scsi_io);

   // cdb_size must be 6 or 10
   if(FALSE == (cdb_size == 6 || cdb_size == 10))
   {
      return status;
   }

   if(sequence->state == SATI_SEQUENCE_STATE_INITIAL)
   {
      sequence->command_specific_data.process_state.ata_command_sent_for_cmp = 0;
      sequence->state = SATI_SEQUENCE_STATE_TRANSLATE_DATA;
   }

   //First, initializes mode_sel_processing_state
   if ( sequence->command_specific_data.process_state.ata_command_sent_for_cmp == 0 )
   {
      if (cdb_size == 6)
      {
         //CDB byte 4 is the parameter length
         data_transfer_length = FUNC1(cdb, 4);
      }
      else
      {
         //CDB byte 7 and 8 for Mode Select 10
         data_transfer_length = (FUNC1(cdb, 7) << 8) + FUNC1(cdb, 8);
      }

      sequence->allocation_length = data_transfer_length;

      //Get 8 bytes for headers (4 bytes for Mode Select 6 and 8 bytes for Mode Select 10)
      for( index = 0; index < 8; index++ )
      {
         FUNC2(sequence, scsi_io, index, &current_mode_parameters[index]);
      }

      //medium type should be 0
      if ( FUNC3(current_mode_parameters, cdb_size) != 0 )
      {
         FUNC8(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_FIELD_IN_PARM_LIST,
            SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST
         );
         return status;
      }

      block_descriptor_length = FUNC4(
                                   current_mode_parameters,
                                   cdb_size
                                );

      mode_page_offset = FUNC5(
                            block_descriptor_length,
                            cdb_size
                         );

      if(mode_page_offset > data_transfer_length)
      {
         sequence->state = SATI_SEQUENCE_STATE_FINAL;
         status = SATI_FAILURE_CHECK_RESPONSE_DATA;
      }
      else
      {
         FUNC6(
            sequence,
            scsi_io,
            ata_io,
            data_transfer_length,
            mode_page_offset
         );

      }
    }

   // move to next mode page
   if(sequence->command_specific_data.process_state.current_mode_page_processed)
   {
      sequence->command_specific_data.process_state.ata_command_sent_for_cmp = 0;
      sequence->command_specific_data.process_state.current_mode_page_processed = FALSE;
   }

   status = FUNC7(sequence, scsi_io, ata_io);

   if(sequence->command_specific_data.process_state.current_mode_page_processed != FALSE)
   {
      // Done this page
      sequence->state = SATI_SEQUENCE_STATE_FINAL;
   }
   else
   {
      sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
   }

   if(status == SATI_FAILURE_CHECK_RESPONSE_DATA)
   {
      sequence->state = SATI_SEQUENCE_STATE_FINAL;
      FUNC8(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_PARM_LIST,
         SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST
      );
   }

   return status;
}