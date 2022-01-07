
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int logical_block_size; int max_lba_range_entry_blocks; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;


 int MIN (int,int ) ;
 int SATI_DSM_MAX_BUFFER_SIZE ;

U32 sati_unmap_get_max_buffer_size_in_blocks(
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{







   return MIN(SATI_DSM_MAX_BUFFER_SIZE/sequence->device->logical_block_size,
              sequence->device->max_lba_range_entry_blocks);
}
