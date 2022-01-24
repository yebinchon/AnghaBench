#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  ATA_IDENTIFY_DEVICE_DATA_T ;

/* Variables and functions */
 int SCSI_MODE_SENSE_DBD_ENABLE ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
U32 FUNC4(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   void                       * scsi_io,
   U8                           transfer_length
)
{
   U8  * cdb = FUNC0(scsi_io);
   U32   offset;

   offset = FUNC2(
               sequence, scsi_io, identify, transfer_length
            );

   // Determine if the caller disabled block descriptors (DBD).  If not,
   // then generate a block descriptor.
   if ((FUNC1(cdb, 1) & SCSI_MODE_SENSE_DBD_ENABLE) == 0)
      offset += FUNC3(
                   sequence, scsi_io, identify, offset
                );

   return offset;
}