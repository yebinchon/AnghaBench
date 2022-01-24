#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int U32 ;
struct TYPE_4__ {int ata_transfer_length; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data_direction; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DOWNLOAD_MICROCODE ; 
 int /*<<< orphan*/  ATA_MICROCODE_DOWNLOAD_SAVE ; 
 int /*<<< orphan*/  SATI_DATA_DIRECTION_OUT ; 
 int /*<<< orphan*/  SAT_PROTOCOL_PIO_DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(
   void                       * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U8                           mode,
   U32                          allocation_length,
   U32                          buffer_offset
)
{
   U8 * register_fis = FUNC1(ata_io);
   U32 allocation_blocks = allocation_length >> 9;
   U32 buffer_blkoffset = buffer_offset >> 9;

   FUNC2(register_fis, ATA_DOWNLOAD_MICROCODE);
   FUNC3(register_fis, mode);

   if(mode == ATA_MICROCODE_DOWNLOAD_SAVE)
   {
      FUNC7(register_fis, (U8) (allocation_length >> 9));
      FUNC5(register_fis, (U8) (allocation_length >> 17));
   }
   else //mode == 0x03
   {
      FUNC7(register_fis, (U8) (allocation_blocks & 0xff));
      FUNC5(register_fis, (U8) ((allocation_blocks >> 8) & 0xff));
      FUNC6(register_fis, (U8) (buffer_blkoffset & 0xff));
      FUNC4(register_fis, (U8) ((buffer_blkoffset >> 8) & 0xff));
   }

   if((allocation_length == 0) && (buffer_offset == 0))
   {
      FUNC0(ata_io, sequence);
   }
   else
   {
      sequence->data_direction      = SATI_DATA_DIRECTION_OUT;
      sequence->protocol            = SAT_PROTOCOL_PIO_DATA_OUT;
      sequence->ata_transfer_length = allocation_length;
   }
}