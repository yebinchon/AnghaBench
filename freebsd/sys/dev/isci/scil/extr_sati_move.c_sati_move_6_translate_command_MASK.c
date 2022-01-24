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
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

SATI_STATUS FUNC7(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb          = FUNC0(scsi_io);
   U8 * register_fis = FUNC1(ata_io);

   // Translate the logical block address information from the SCSI CDB.
   // There is only 5 bits of MSB located in byte 1 of the CDB.
   FUNC5(register_fis, FUNC2(cdb, 3));
   FUNC6(register_fis, FUNC2(cdb, 2));
   FUNC4(register_fis, FUNC2(cdb, 1) & 0x1F);

   FUNC3(sequence, scsi_io, ata_io, 0);

   return SATI_SUCCESS;
}