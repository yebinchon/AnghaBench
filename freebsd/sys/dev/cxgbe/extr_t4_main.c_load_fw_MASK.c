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
typedef  int /*<<< orphan*/  uint8_t ;
struct t4_data {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct adapter {int flags; int debug_flags; } ;

/* Variables and functions */
 int DF_LOAD_FW_ANYTIME ; 
 int EBUSY ; 
 int ENOMEM ; 
 int FULL_INIT_DONE ; 
 int INTR_OK ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SLEEP_OK ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct adapter *sc, struct t4_data *fw)
{
	int rc;
	uint8_t *fw_data;

	rc = FUNC0(sc, NULL, SLEEP_OK | INTR_OK, "t4ldfw");
	if (rc)
		return (rc);

	/*
	 * The firmware, with the sole exception of the memory parity error
	 * handler, runs from memory and not flash.  It is almost always safe to
	 * install a new firmware on a running system.  Just set bit 1 in
	 * hw.cxgbe.dflags or dev.<nexus>.<n>.dflags first.
	 */
	if (sc->flags & FULL_INIT_DONE &&
	    (sc->debug_flags & DF_LOAD_FW_ANYTIME) == 0) {
		rc = EBUSY;
		goto done;
	}

	fw_data = FUNC4(fw->len, M_CXGBE, M_WAITOK);
	if (fw_data == NULL) {
		rc = ENOMEM;
		goto done;
	}

	rc = FUNC1(fw->data, fw_data, fw->len);
	if (rc == 0)
		rc = -FUNC5(sc, fw_data, fw->len);

	FUNC3(fw_data, M_CXGBE);
done:
	FUNC2(sc, 0);
	return (rc);
}