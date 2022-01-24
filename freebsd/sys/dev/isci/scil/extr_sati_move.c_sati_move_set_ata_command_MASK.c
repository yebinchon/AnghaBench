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
struct TYPE_3__ {scalar_t__ data_direction; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 scalar_t__ SATI_DATA_DIRECTION_OUT ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC2(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * ata_io,
   U8                           write_opcode,
   U8                           read_opcode
)
{
   U8 * register_fis = FUNC0(ata_io);

   if (sequence->data_direction == SATI_DATA_DIRECTION_OUT)
      FUNC1(register_fis, write_opcode);
   else
      FUNC1(register_fis, read_opcode);
}