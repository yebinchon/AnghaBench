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
struct emu_sc_info {int dbg_level; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct emu_sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(struct emu_sc_info *sc, unsigned gpr, int32_t val)
{
	if (sc->dbg_level > 1)
		if (gpr == 0) {
			FUNC1(sc->dev, "Zero gpr write access\n");
#ifdef KDB
			kdb_backtrace();
#endif
			return;
			}

	FUNC2(sc, 0, FUNC0(gpr), val);
}