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
typedef  int u_int ;
struct resource {int dummy; } ;
struct cbb_softc {int /*<<< orphan*/  irq_res; } ;
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int,int,int,int) ; 
 int CBB_MEMALIGN ; 
 int RF_ACTIVE ; 
 int FUNC1 (int) ; 
 int RF_ALIGNMENT_MASK ; 
 int RF_SHAREABLE ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct cbb_softc*,struct resource*,int,int) ; 
 int cbb_start_16_io ; 
 int cbb_start_mem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cbb_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static struct resource *
FUNC10(device_t brdev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct resource *res = NULL;
	struct cbb_softc *sc = FUNC6(brdev);
	int align;
	int tmp;

	switch (type) {
	case SYS_RES_MEMORY:
		if (start < cbb_start_mem)
			start = cbb_start_mem;
		if (end < start)
			end = start;
		if (count < CBB_MEMALIGN)
			align = CBB_MEMALIGN;
		else
			align = count;
		if (align > (1 << FUNC1(flags)))
			flags = (flags & ~RF_ALIGNMENT_MASK) | 
			    FUNC9(align);
		break;
	case SYS_RES_IOPORT:
		if (start < cbb_start_16_io)
			start = cbb_start_16_io;
		if (end < start)
			end = start;
		break;
	case SYS_RES_IRQ:
		tmp = FUNC8(sc->irq_res);
		if (start > tmp || end < tmp || count != 1) {
			FUNC7(child, "requested interrupt %jd-%jd,"
			    "count = %jd not supported by cbb\n",
			    start, end, count);
			return (NULL);
		}
		flags |= RF_SHAREABLE;
		start = end = FUNC8(sc->irq_res);
		break;
	}
	res = FUNC0(FUNC5(brdev), child, type, rid,
	    start, end, count, flags & ~RF_ACTIVE);
	if (res == NULL)
		return (NULL);
	FUNC4(sc, res, type, *rid);
	if (flags & RF_ACTIVE) {
		if (FUNC2(child, type, *rid, res) != 0) {
			FUNC3(child, type, *rid, res);
			return (NULL);
		}
	}

	return (res);
}