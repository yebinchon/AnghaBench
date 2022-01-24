#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U8 ;
typedef  scalar_t__ U16 ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {scalar_t__ ata_standby_timer; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_2__*) ; 
 scalar_t__* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__) ; 

void FUNC4(
   void                       * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U16                          count
)
{
   U8 * register_fis = FUNC1(ata_io);

   FUNC2(register_fis, ATA_STANDBY);
   FUNC3(register_fis, count);

   sequence->device->ata_standby_timer = (U8) count;

   FUNC0(ata_io, sequence);
}