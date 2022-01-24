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
typedef  int U8 ;

/* Variables and functions */
 int ATA_DEV_HEAD_REG_LBA_MODE_ENABLE ; 
 int* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 

__attribute__((used)) static
void FUNC5(U8 * lba, void  * ata_io)
{
   U8 * register_fis = FUNC0(ata_io);

   FUNC3(register_fis, lba[0]);
   FUNC4(register_fis, lba[1]);
   FUNC2(register_fis, lba[2]);
   FUNC1(register_fis, ATA_DEV_HEAD_REG_LBA_MODE_ENABLE | (lba[3] & 0x0F));


}