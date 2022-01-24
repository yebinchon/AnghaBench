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
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int ATA_DEV_HEAD_REG_LBA_MODE_ENABLE ; 
 int* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

void FUNC2(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io,
   U8                           device_head
)
{
   U8 * register_fis = FUNC0(ata_io);

   FUNC1(
      register_fis, device_head | ATA_DEV_HEAD_REG_LBA_MODE_ENABLE
   );
}