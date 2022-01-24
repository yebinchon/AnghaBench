#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U8 ;
typedef  int U32 ;
struct TYPE_9__ {int capabilities1; } ;
struct TYPE_8__ {TYPE_1__* device; } ;
struct TYPE_7__ {scalar_t__ ata_standby_timer; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  TYPE_3__ ATA_IDENTIFY_DEVICE_DATA_T ;

/* Variables and functions */
 int SCSI_MODE_PAGE_1A_LENGTH ; 
 scalar_t__ SCSI_MODE_PAGE_POWER_CONDITION ; 
 scalar_t__ SCSI_MODE_SENSE_PC_CURRENT ; 
 scalar_t__ SCSI_MODE_SENSE_PC_SHIFT ; 
 scalar_t__ STANDBY_TIMER_DISABLED ; 
 scalar_t__ STANDBY_TIMER_ENABLED ; 
 int STANDBY_TIMER_SUPPORTED ; 
 scalar_t__* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*,int,scalar_t__) ; 

U32 FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32                          offset
)
{
   U8 * cdb          = FUNC0(scsi_io);
   U8   page_control = FUNC1(cdb, 2) >> SCSI_MODE_SENSE_PC_SHIFT;

   U8 ata_sb_timer;

   //Represents tenths of seconds
   U32 standby_timer = 0x00000000;

   U8 standby_enabled = STANDBY_TIMER_DISABLED;

   if ((page_control == SCSI_MODE_SENSE_PC_CURRENT) &&
       (identify->capabilities1 & STANDBY_TIMER_SUPPORTED))
   {
      standby_enabled = STANDBY_TIMER_ENABLED;

      ata_sb_timer = sequence->device->ata_standby_timer;

      //converting ATA timer values into SCSI timer values
      if(ata_sb_timer <= 0xF0)
      {
         standby_timer = ata_sb_timer * 50;
      }
      else if(ata_sb_timer <= 0xFB)
      {
         standby_timer = ((ata_sb_timer - 240) * 18000);
      }
      else if(ata_sb_timer == 0xFC)
      {
         standby_timer = 12600;
      }
      else if(ata_sb_timer == 0xFD)
      {
         standby_timer = 432000;
      }
      else if(ata_sb_timer == 0xFF)
      {
         standby_timer = 12750;
      }
      else
      {
         standby_timer = 0xFFFFFFFF;
      }
   }

   FUNC2(sequence, scsi_io, offset, SCSI_MODE_PAGE_POWER_CONDITION);
   FUNC2(sequence, scsi_io, offset + 1, (SCSI_MODE_PAGE_1A_LENGTH - 2));
   FUNC2(sequence, scsi_io, offset + 2, 0x00);
   FUNC2(sequence, scsi_io, offset + 3, standby_enabled);
   FUNC2(sequence, scsi_io, offset + 4, 0x00);
   FUNC2(sequence, scsi_io, offset + 5, 0x00);
   FUNC2(sequence, scsi_io, offset + 6, 0x00);
   FUNC2(sequence, scsi_io, offset + 7, 0x00);
   FUNC2(sequence, scsi_io, offset + 8, (U8) (standby_timer >> 24));
   FUNC2(sequence, scsi_io, offset + 9, (U8) (standby_timer >> 16));
   FUNC2(sequence, scsi_io, offset + 10, (U8) (standby_timer >> 8));
   FUNC2(sequence, scsi_io, offset + 11, (U8) standby_timer);

   return SCSI_MODE_PAGE_1A_LENGTH;
}