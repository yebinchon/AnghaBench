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
struct TYPE_5__ {scalar_t__ scratch; } ;
struct TYPE_6__ {int allocation_length; TYPE_1__ command_specific_data; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*,void*,int) ; 

SATI_STATUS FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb = FUNC0(scsi_io);

   sequence->command_specific_data.scratch = 0;

   // Set the data length based on the allocation length field in the CDB.
   sequence->allocation_length = (FUNC1(cdb, 7) << 8) |
                                 (FUNC1(cdb, 8));

   return FUNC2(sequence, scsi_io, ata_io, 10);
}