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
struct bhndb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIO ; 
 int RF_ACTIVE ; 
 int SYS_RES_MEMORY ; 
 int FUNC1 (struct bhndb_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ *) ; 
 struct bhndb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, device_t child, int type,
    struct resource *r)
{
	struct bhndb_softc	*sc;

	sc = FUNC2(dev);

	/* Non-MMIO resources (e.g. IRQs) are handled solely by our parent */
	if (type != SYS_RES_MEMORY)
		return (0);

	/* Inactive resources don't require reallocation of bridge resources */
	if (!(FUNC5(r) & RF_ACTIVE))
		return (0);

	if (FUNC0(PRIO))
		FUNC3(child, "resume resource type=%d 0x%jx+0x%jx\n",
		    type, FUNC8(r), FUNC7(r));

	return (FUNC1(sc, FUNC4(r), type,
	    FUNC6(r), r, NULL));
}