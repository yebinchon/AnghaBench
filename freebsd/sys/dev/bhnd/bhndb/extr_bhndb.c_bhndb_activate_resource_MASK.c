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
struct bhndb_softc {int /*<<< orphan*/  parent_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/ * FUNC1 (struct bhndb_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bhndb_softc*,int /*<<< orphan*/ ,int,int,struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	struct bhndb_softc *sc = FUNC4(dev);

	/* Delegate directly to our parent device's bus if the requested
	 * resource type isn't handled locally. */
	if (FUNC1(sc, child, type) == NULL) {
		return (FUNC0(FUNC3(sc->parent_dev),
		    child, type, rid, r));
	}

	return (FUNC2(sc, child, type, rid, r, NULL));
}