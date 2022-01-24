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
typedef  scalar_t__ uint32_t ;
struct tuple_callbacks {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CISTPL_END ; 
 int CISTPL_LINKTARGET ; 
 int CISTPL_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MAXTUPLESIZE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCIR_CIS ; 
 int TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,scalar_t__,scalar_t__*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 struct resource* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,struct tuple_callbacks*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC9(device_t cbdev, device_t child,
    struct tuple_callbacks *callbacks, void *argp)
{
	uint8_t *tupledata;
	int tupleid = CISTPL_NULL;
	int len;
	int expect_linktarget;
	uint32_t start, off;
	struct resource *res;
	int rid;

	tupledata = FUNC7(MAXTUPLESIZE, M_DEVBUF, M_WAITOK | M_ZERO);
	expect_linktarget = TRUE;
	if ((start = FUNC8(child, PCIR_CIS, 4)) == 0) {
		FUNC0((cbdev, "Warning: CIS pointer is 0: (no CIS)\n"));
		FUNC6(tupledata, M_DEVBUF);
		return (0);
	}
	FUNC0((cbdev, "CIS pointer is %#x\n", start));
	off = 0;
	res = FUNC3(cbdev, child, &start, &rid);
	if (res == NULL) {
		FUNC5(cbdev, "Unable to allocate resources for CIS\n");
		FUNC6(tupledata, M_DEVBUF);
		return (ENXIO);
	}

	do {
		if (FUNC1(cbdev, child, res, start, &off,
		    &tupleid, &len, tupledata) != 0) {
			FUNC5(cbdev, "Failed to read CIS.\n");
			FUNC2(cbdev, child, rid, res);
			FUNC6(tupledata, M_DEVBUF);
			return (ENXIO);
		}

		if (expect_linktarget && tupleid != CISTPL_LINKTARGET) {
			FUNC5(cbdev, "Expecting link target, got 0x%x\n",
			    tupleid);
			FUNC2(cbdev, child, rid, res);
			FUNC6(tupledata, M_DEVBUF);
			return (EINVAL);
		}
		expect_linktarget = FUNC4(cbdev, child, tupleid, len,
		    tupledata, start, &off, callbacks, argp);
		if (expect_linktarget != 0) {
			FUNC5(cbdev, "Parsing failed with %d\n",
			    expect_linktarget);
			FUNC2(cbdev, child, rid, res);
			FUNC6(tupledata, M_DEVBUF);
			return (expect_linktarget);
		}
	} while (tupleid != CISTPL_END);
	FUNC2(cbdev, child, rid, res);
	FUNC6(tupledata, M_DEVBUF);
	return (0);
}