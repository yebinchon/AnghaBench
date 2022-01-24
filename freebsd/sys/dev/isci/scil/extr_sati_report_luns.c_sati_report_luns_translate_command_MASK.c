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
struct TYPE_4__ {int allocation_length; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_COMPLETE ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,int,int) ; 

SATI_STATUS FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb = FUNC0(scsi_io);

   // Set the data length based on the allocation length field in the CDB.
   sequence->allocation_length = (FUNC1(cdb, 6) << 24) |
                                 (FUNC1(cdb, 7) << 16) |
                                 (FUNC1(cdb, 8) << 8)  |
                                 (FUNC1(cdb, 9));

   // The first 4 bytes indicate the length of the LUN list.  Each
   // LUN entry is 8 bytes.  There is only ever LUN 0 for ATA/ATAPI
   // devices.  The value reported is: n-7, where n is the last byte
   // offset (i.e. 15) in the REPORT LUN data.
   FUNC2(sequence, scsi_io, 0, 0);
   FUNC2(sequence, scsi_io, 1, 0);
   FUNC2(sequence, scsi_io, 2, 0);
   FUNC2(sequence, scsi_io, 3, 8);

   // Bytes 4-7 are reserved.
   FUNC2(sequence, scsi_io, 4, 0);
   FUNC2(sequence, scsi_io, 5, 0);
   FUNC2(sequence, scsi_io, 6, 0);
   FUNC2(sequence, scsi_io, 7, 0);

   // Add in our single LUN of zero.
   FUNC2(sequence, scsi_io, 8, 0);
   FUNC2(sequence, scsi_io, 9, 0);
   FUNC2(sequence, scsi_io, 10, 0);
   FUNC2(sequence, scsi_io, 11, 0);
   FUNC2(sequence, scsi_io, 12, 0);
   FUNC2(sequence, scsi_io, 13, 0);
   FUNC2(sequence, scsi_io, 14, 0);
   FUNC2(sequence, scsi_io, 15, 0);

   return SATI_COMPLETE;
}