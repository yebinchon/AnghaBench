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
typedef  int /*<<< orphan*/  uint32_t ;
struct emu_sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emu_sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct emu_sc_info*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct emu_sc_info *sc, uint32_t data)
{
	uint32_t val;

	/*
	 * 0x38 is IPE3 (CD S/PDIF interrupt pending register) on CA0102. Seems
	 * to be some reg/value accessible kind of config register on CardBus
	 * CA0108, with value(?) in top 16 bit, address(?) in low 16
	 */

	val = FUNC0(sc, 0x38, 4);
	FUNC1(sc, 0x38, data, 4);
	val = FUNC0(sc, 0x38, 4);

}