#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_6__ {TYPE_1__* device; int /*<<< orphan*/  data_direction; } ;
struct TYPE_5__ {int capabilities; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_WRITE_DMA ; 
 int /*<<< orphan*/  ATA_WRITE_DMA_EXT ; 
 int /*<<< orphan*/  SATI_DATA_DIRECTION_OUT ; 
 int SATI_DEVICE_CAP_48BIT_ENABLE ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SATI_STATUS FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * register_fis = FUNC1(ata_io);

   FUNC0(ata_io, sequence);
   sequence->data_direction = SATI_DATA_DIRECTION_OUT;

//   sati_set_ata_sector_count(register_fis, 1);
//   status=sati_move_set_sector_count(sequence,scsi_io,ata_io,1,0);

   // Ensure the device supports the 48 bit feature set.
   if (sequence->device->capabilities & SATI_DEVICE_CAP_48BIT_ENABLE)
      FUNC2(register_fis, ATA_WRITE_DMA_EXT);
   else
      FUNC2(register_fis, ATA_WRITE_DMA);

   return SATI_SUCCESS; //sati_move_set_sector_count(sequence,scsi_io,ata_io,1,0);
}