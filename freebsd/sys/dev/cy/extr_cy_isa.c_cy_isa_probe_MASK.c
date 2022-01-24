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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cy_addr ;

/* Variables and functions */
 int /*<<< orphan*/  CY16_RESET ; 
 int /*<<< orphan*/  CY_CLEAR_INTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct resource *mem_res;
	cy_addr iobase;
	int error, mem_rid;

	if (FUNC7(dev) != 0)	/* skip PnP probes */
		return (ENXIO);

	mem_rid = 0;
	mem_res = FUNC1(dev, SYS_RES_MEMORY, &mem_rid,
	    RF_ACTIVE);
	if (mem_res == NULL) {
		FUNC6(dev, "ioport resource allocation failed\n");
		return (ENXIO);
	}
	iobase = FUNC8(mem_res);

	/* Cyclom-16Y hardware reset (Cyclom-8Ys don't care) */
	FUNC3(iobase, CY16_RESET, 0);	/* XXX? */
	FUNC0(500);		/* wait for the board to get its act together */

	/* this is needed to get the board out of reset */
	FUNC4(iobase, CY_CLEAR_INTR, 0, 0);
	FUNC0(500);

	error = (FUNC5(iobase, 0) == 0 ? ENXIO : 0);
	FUNC2(dev, SYS_RES_MEMORY, mem_rid, mem_res);
	return (error);
}