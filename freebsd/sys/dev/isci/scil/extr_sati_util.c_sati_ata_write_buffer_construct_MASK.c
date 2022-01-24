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
struct TYPE_3__ {int ata_transfer_length; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data_direction; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_WRITE_BUFFER ; 
 int /*<<< orphan*/  SATI_DATA_DIRECTION_OUT ; 
 int /*<<< orphan*/  SAT_PROTOCOL_PIO_DATA_OUT ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(
   void                       * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   U8 * register_fis = FUNC0(ata_io);

   FUNC1(register_fis, ATA_WRITE_BUFFER);

   sequence->data_direction      = SATI_DATA_DIRECTION_OUT;
   sequence->protocol            = SAT_PROTOCOL_PIO_DATA_OUT;
   sequence->ata_transfer_length = 512;
}