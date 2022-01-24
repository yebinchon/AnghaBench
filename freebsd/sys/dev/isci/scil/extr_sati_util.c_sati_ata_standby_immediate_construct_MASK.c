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
 int /*<<< orphan*/  ATA_STANDBY_IMMED ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(
   void                       * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   U8 * register_fis = FUNC1(ata_io);

   FUNC2(register_fis, ATA_STANDBY_IMMED);
   FUNC0(ata_io, sequence);
}