
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int U8 ;
typedef size_t U32 ;
typedef size_t U16 ;
struct TYPE_12__ {size_t max_unmap_block_descriptors; size_t max_lba_range_entries; size_t current_unmap_block_descriptor_index; int unmap_buffer_sgl_pair; int * virtual_unmap_buffer; int physical_unmap_buffer_high; int physical_unmap_buffer_low; } ;
struct TYPE_10__ {TYPE_3__ unmap_process_state; } ;
struct TYPE_13__ {size_t allocation_length; int state; TYPE_2__* device; int type; TYPE_1__ command_specific_data; } ;
struct TYPE_11__ {int capabilities; size_t logical_block_size; } ;
typedef int TRIM_PAIR ;
typedef TYPE_3__ SATI_UNMAP_PROCESSING_STATE_T ;
typedef TYPE_4__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_COMPLETE ;
 int SATI_DEVICE_CAP_DSM_TRIM_SUPPORT ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_STATE_INCOMPLETE ;
 int SATI_SEQUENCE_UNMAP ;
 int SATI_SUCCESS ;
 size_t SATI_UNMAP_SIZEOF_SCSI_UNMAP_BLOCK_DESCRIPTOR ;
 size_t SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_SENSE_NO_SENSE ;
 int SCSI_STATUS_BUSY ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int sati_cb_allocate_dma_buffer (void*,size_t,int **,int *,int *) ;
 int* sati_cb_get_cdb_address (void*) ;
 int sati_cb_sgl_next_sge (void*,void*,int *,int *) ;
 int sati_get_cdb_byte (int*,int) ;
 int sati_get_data_byte (TYPE_4__*,void*,size_t,int*) ;
 int sati_scsi_sense_data_construct (TYPE_4__*,void*,int ,int ,int ,int ) ;
 size_t sati_unmap_get_max_buffer_size_in_blocks (TYPE_4__*) ;
 int sati_unmap_load_next_descriptor (TYPE_4__*,void*) ;

SATI_STATUS sati_unmap_initial_processing(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_UNMAP_PROCESSING_STATE_T * unmap_process_state;
   U8 * cdb;
   U16 unmap_length;
   U32 descriptor_length;
   U32 index;
   U32 max_dsm_blocks;
   U8 unmap_param_list[8];

   unmap_process_state = &sequence->command_specific_data.unmap_process_state;


   sequence->type = SATI_SEQUENCE_UNMAP;


   if ((sequence->device->capabilities & SATI_DEVICE_CAP_DSM_TRIM_SUPPORT)
       != SATI_DEVICE_CAP_DSM_TRIM_SUPPORT)
   {

      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }


   cdb = sati_cb_get_cdb_address(scsi_io);
   unmap_length = (sati_get_cdb_byte(cdb, 7) << 8) | sati_get_cdb_byte(cdb, 8);


   if (unmap_length == 0)
   {

       return SATI_SUCCESS;
   }
   if (unmap_length < SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST)
   {

      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   sequence->allocation_length = unmap_length;


   for(index = 0; index < SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST; index++)
   {
      sati_get_data_byte(sequence, scsi_io, index, &unmap_param_list[index]);
   }
   descriptor_length = (unmap_param_list[2] << 8) | unmap_param_list[3];


   if (descriptor_length == 0)
   {

       return SATI_SUCCESS;
   }

   if ((U32)(unmap_length - SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST) < descriptor_length)
   {

      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }


   unmap_process_state->max_unmap_block_descriptors =
       descriptor_length/SATI_UNMAP_SIZEOF_SCSI_UNMAP_BLOCK_DESCRIPTOR;



   max_dsm_blocks = sati_unmap_get_max_buffer_size_in_blocks(sequence);


   unmap_process_state->max_lba_range_entries =
       (max_dsm_blocks*sequence->device->logical_block_size)/sizeof(TRIM_PAIR);


   sati_cb_allocate_dma_buffer(
      scsi_io,
      max_dsm_blocks*sequence->device->logical_block_size,
      &(unmap_process_state->virtual_unmap_buffer),
      &(unmap_process_state->physical_unmap_buffer_low),
      &(unmap_process_state->physical_unmap_buffer_high));


   if (unmap_process_state->virtual_unmap_buffer == ((void*)0))
   {

      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_BUSY,
         SCSI_SENSE_NO_SENSE,
         SCSI_ASC_NO_ADDITIONAL_SENSE,
         SCSI_ASCQ_NO_ADDITIONAL_SENSE
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }



   sati_cb_sgl_next_sge(scsi_io,
                        ata_io,
                        ((void*)0),
                        &(unmap_process_state->unmap_buffer_sgl_pair));


   unmap_process_state->current_unmap_block_descriptor_index =
      SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST;
   sati_unmap_load_next_descriptor(sequence,scsi_io);



   sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;

   return SATI_COMPLETE;
}
