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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
void FUNC5(
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb          = FUNC0(scsi_io);
   U8 * register_fis = FUNC1(ata_io);

   FUNC3(register_fis, FUNC2(cdb, 4));

   // A read 6 with a 0 sector count indicates a transfer of 256 sectors.
   // As a result update the MSB (features expanded register) to indicate
   // 256 sectors (0x100).
   if (FUNC2(cdb, 4) == 0)
      FUNC4(register_fis, 1);
}