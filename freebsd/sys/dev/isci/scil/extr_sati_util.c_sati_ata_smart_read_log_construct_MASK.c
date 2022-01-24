#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_3__ {int /*<<< orphan*/  ata_transfer_length; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data_direction; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_SMART ; 
 int /*<<< orphan*/  ATA_SMART_SUB_CMD_READ_LOG ; 
 int /*<<< orphan*/  SATI_DATA_DIRECTION_IN ; 
 int /*<<< orphan*/  SAT_PROTOCOL_PIO_DATA_IN ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(
   void                       * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U8                           log_address,
   U32                          transfer_length
)
{
   U8 * register_fis = FUNC0(ata_io);

   FUNC1(register_fis, ATA_SMART);
   FUNC2(register_fis, ATA_SMART_SUB_CMD_READ_LOG);

   FUNC3(register_fis, 0xC2);
   FUNC5(register_fis, 0x4F);
   FUNC4(register_fis, log_address);

   sequence->data_direction      = SATI_DATA_DIRECTION_IN;
   sequence->protocol            = SAT_PROTOCOL_PIO_DATA_IN;
   sequence->ata_transfer_length = transfer_length;
}