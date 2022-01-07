
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int U8 ;
typedef scalar_t__ U32 ;
struct TYPE_15__ {scalar_t__ sector_address; scalar_t__ sector_count; } ;
struct TYPE_13__ {scalar_t__ max_lba_range_entries; scalar_t__ current_lba_count; scalar_t__ next_lba; scalar_t__ current_lba; scalar_t__ max_unmap_block_descriptors; int physical_unmap_buffer_high; int physical_unmap_buffer_low; int unmap_buffer_sgl_pair; int * current_dsm_descriptor; int * virtual_unmap_buffer; } ;
struct TYPE_11__ {TYPE_3__ unmap_process_state; } ;
struct TYPE_14__ {int state; TYPE_2__* device; TYPE_1__ command_specific_data; } ;
struct TYPE_12__ {scalar_t__ logical_block_size; } ;
typedef int TRIM_PAIR ;
typedef TYPE_3__ SATI_UNMAP_PROCESSING_STATE_T ;
typedef TYPE_4__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;
typedef scalar_t__ SATI_LBA ;
typedef TYPE_5__* PTRIM_PAIR ;
typedef int POINTER_UINT ;


 int ASSERT (int) ;
 scalar_t__ SATI_DSM_MAX_SECTOR_ADDRESS ;
 scalar_t__ SATI_DSM_MAX_SECTOR_COUNT ;
 int SATI_SEQUENCE_STATE_FINAL ;
 int SATI_SUCCESS_SGL_TRANSLATED ;
 int memset (int *,int ,scalar_t__) ;
 int sati_cb_sge_write (int ,int ,int ,scalar_t__) ;
 scalar_t__ sati_unmap_calculate_dsm_blocks (TYPE_4__*,scalar_t__) ;
 int sati_unmap_construct (TYPE_4__*,void*,void*,scalar_t__) ;
 scalar_t__ sati_unmap_get_max_buffer_size_in_blocks (TYPE_4__*) ;
 int sati_unmap_load_next_descriptor (TYPE_4__*,void*) ;

SATI_STATUS sati_unmap_process(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_UNMAP_PROCESSING_STATE_T * unmap_process_state;
   SATI_LBA dsm_descriptor_lba_count;
   U32 dsm_descriptor;
   U32 dsm_bytes;
   U32 dsm_remainder_bytes;
   U32 dsm_blocks;
   U32 max_dsm_blocks;

   unmap_process_state = &sequence->command_specific_data.unmap_process_state;


   unmap_process_state->current_dsm_descriptor = unmap_process_state->virtual_unmap_buffer;
   dsm_descriptor = 0;


   while ((dsm_descriptor < unmap_process_state->max_lba_range_entries) &&
          (unmap_process_state->current_lba_count > 0)) {

      if (unmap_process_state->current_lba_count > SATI_DSM_MAX_SECTOR_COUNT) {



         dsm_descriptor_lba_count = SATI_DSM_MAX_SECTOR_COUNT;
         unmap_process_state->current_lba_count -= SATI_DSM_MAX_SECTOR_COUNT;
         unmap_process_state->next_lba =
             unmap_process_state->current_lba + SATI_DSM_MAX_SECTOR_COUNT;
      } else {

         dsm_descriptor_lba_count = unmap_process_state->current_lba_count;
         unmap_process_state->current_lba_count = 0;
      }


      ((PTRIM_PAIR)(unmap_process_state->current_dsm_descriptor))->sector_address =
          unmap_process_state->current_lba;
      ((PTRIM_PAIR)(unmap_process_state->current_dsm_descriptor))->sector_count =
          dsm_descriptor_lba_count;


      if (unmap_process_state->current_lba_count == 0) {

         --unmap_process_state->max_unmap_block_descriptors;
         if (unmap_process_state->max_unmap_block_descriptors > 0) {

            sati_unmap_load_next_descriptor(sequence,scsi_io);
         }
      } else {

         unmap_process_state->current_lba = unmap_process_state->next_lba;
      }


      ASSERT(unmap_process_state->current_lba <= SATI_DSM_MAX_SECTOR_ADDRESS);


      dsm_descriptor++;
      unmap_process_state->current_dsm_descriptor =
          (U8 *)(unmap_process_state->current_dsm_descriptor) + sizeof(TRIM_PAIR);
   }


   dsm_blocks = sati_unmap_calculate_dsm_blocks(sequence,dsm_descriptor);
   dsm_bytes = dsm_blocks * sequence->device->logical_block_size;
   max_dsm_blocks = sati_unmap_get_max_buffer_size_in_blocks(sequence);




   dsm_remainder_bytes = sequence->device->logical_block_size;
   dsm_remainder_bytes -= (U32)((POINTER_UINT)unmap_process_state->current_dsm_descriptor &
                                (sequence->device->logical_block_size-1));


   if (dsm_remainder_bytes != sequence->device->logical_block_size)
   {

       dsm_remainder_bytes += (sequence->device->logical_block_size * (max_dsm_blocks - dsm_blocks));




       memset((U8 *)unmap_process_state->current_dsm_descriptor, 0, dsm_remainder_bytes);
   }



   sati_cb_sge_write(unmap_process_state->unmap_buffer_sgl_pair,
                     unmap_process_state->physical_unmap_buffer_low,
                     unmap_process_state->physical_unmap_buffer_high,
                     dsm_bytes);


   sati_unmap_construct(sequence,
                        scsi_io,
                        ata_io,
                        dsm_blocks);



   if (unmap_process_state->current_lba_count == 0)
   {

       sequence->state = SATI_SEQUENCE_STATE_FINAL;
   }

   return SATI_SUCCESS_SGL_TRANSLATED;
}
