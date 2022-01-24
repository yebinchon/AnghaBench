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

/* Variables and functions */
 int /*<<< orphan*/  ATA_READ_VERIFY_SECTORS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(
   void                       * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   U8 * register_fis = FUNC1(ata_io);

   FUNC2(register_fis, ATA_READ_VERIFY_SECTORS);

   //According to SAT-2 (v7) 9.11.3
   FUNC4(register_fis, 1);

   //According to SAT-2 (v7) 9.11.3, set LBA to a value between zero and the
   //maximum LBA supported by the ATA device in its current configuration.
   //From the unit test, it seems we have to set LBA to a non-zero value.
   FUNC3(register_fis, 1);

   FUNC0(ata_io, sequence);
}