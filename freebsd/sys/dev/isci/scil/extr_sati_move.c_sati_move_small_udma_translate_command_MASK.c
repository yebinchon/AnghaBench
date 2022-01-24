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
struct TYPE_4__ {scalar_t__ data_direction; int /*<<< orphan*/  protocol; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 scalar_t__ SATI_DATA_DIRECTION_IN ; 
 int /*<<< orphan*/  SAT_PROTOCOL_UDMA_DATA_IN ; 
 int /*<<< orphan*/  SAT_PROTOCOL_UDMA_DATA_OUT ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC5(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io,
   U8                           write_opcode,
   U8                           read_opcode
)
{
   U8 * cdb          = FUNC0(scsi_io);
   U8 * register_fis = FUNC1(ata_io);

   FUNC3(sequence, ata_io, write_opcode, read_opcode);
   FUNC4(register_fis, FUNC2(cdb, 4));

   if (sequence->data_direction == SATI_DATA_DIRECTION_IN)
      sequence->protocol = SAT_PROTOCOL_UDMA_DATA_IN;
   else
      sequence->protocol = SAT_PROTOCOL_UDMA_DATA_OUT;
}