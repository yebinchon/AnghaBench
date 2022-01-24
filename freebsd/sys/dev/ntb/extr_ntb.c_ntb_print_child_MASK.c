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
struct ntb_child {int mwcnt; int mwoff; int spadcnt; int spadoff; int dbcnt; int dboff; int function; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ntb_child* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int) ; 

int
FUNC5(device_t dev, device_t child)
{
	struct ntb_child *nc = FUNC3(child);
	int retval;

	retval = FUNC2(dev, child);
	if (nc->mwcnt > 0) {
		FUNC4(" mw %d", nc->mwoff);
		if (nc->mwcnt > 1)
			FUNC4("-%d", nc->mwoff + nc->mwcnt - 1);
	}
	if (nc->spadcnt > 0) {
		FUNC4(" spad %d", nc->spadoff);
		if (nc->spadcnt > 1)
			FUNC4("-%d", nc->spadoff + nc->spadcnt - 1);
	}
	if (nc->dbcnt > 0) {
		FUNC4(" db %d", nc->dboff);
		if (nc->dbcnt > 1)
			FUNC4("-%d", nc->dboff + nc->dbcnt - 1);
	}
	retval += FUNC4(" at function %d", nc->function);
	retval += FUNC0(dev, child);
	retval += FUNC1(dev, child);

	return (retval);
}