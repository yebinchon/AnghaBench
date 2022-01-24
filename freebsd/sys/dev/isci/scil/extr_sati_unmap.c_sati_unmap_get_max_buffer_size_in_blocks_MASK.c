#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int logical_block_size; int /*<<< orphan*/  max_lba_range_entry_blocks; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SATI_DSM_MAX_BUFFER_SIZE ; 

U32 FUNC1(
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   // Currently this SATI implementation only supports a single
   // 4k block of memory for the DMA write operation for simplicity
   // (no need to handle more than one SG element).
   // Since most run time UNMAP requests use 1K or less buffer space,
   // there is no performance degradation with only supporting a
   // single physical page.  For best results allocate the maximum
   // amount of memory the device can handle up to the maximum of 4K.
   return FUNC0(SATI_DSM_MAX_BUFFER_SIZE/sequence->device->logical_block_size,
              sequence->device->max_lba_range_entry_blocks);
}