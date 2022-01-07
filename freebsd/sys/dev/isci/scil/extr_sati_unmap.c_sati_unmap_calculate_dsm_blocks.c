
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int logical_block_size; } ;
typedef int TRIM_PAIR ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;



U32 sati_unmap_calculate_dsm_blocks(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U32 dsm_descriptor_count
)
{
   U32 blocks = (dsm_descriptor_count * sizeof(TRIM_PAIR))/sequence->device->logical_block_size;
   if ((dsm_descriptor_count * sizeof(TRIM_PAIR)) % sequence->device->logical_block_size)
   {
       blocks++;
   }
   return blocks;
}
