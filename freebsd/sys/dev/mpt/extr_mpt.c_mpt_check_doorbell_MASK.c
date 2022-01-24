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
struct mpt_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ MPT_DB_STATE_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*) ; 

void
FUNC4(struct mpt_softc *mpt)
{
	uint32_t db = FUNC3(mpt);

	if (FUNC0(db) != MPT_DB_STATE_RUNNING) {
		FUNC2(mpt, "Device not running\n");
		FUNC1(db);
	}
}