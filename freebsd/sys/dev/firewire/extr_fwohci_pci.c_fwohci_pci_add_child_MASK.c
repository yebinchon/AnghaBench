#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_3__ {int /*<<< orphan*/ * bdev; } ;
struct fwohci_softc {TYPE_1__ fc; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static device_t
FUNC11(device_t dev, u_int order, const char *name, int unit)
{
	struct fwohci_softc *sc;
	device_t child;
	int err = 0;

	sc = (struct fwohci_softc *)FUNC3(dev);
	child = FUNC1(dev, name, unit);
	if (child == NULL)
		return (child);

	sc->fc.bdev = child;
	FUNC6(child, &sc->fc);

	err = FUNC5(child);
	if (err) {
		FUNC4(dev, "probe_and_attach failed with err=%d\n",
		    err);
		FUNC7(dev);
		FUNC2(dev, child);
		return NULL;
	}

	/* XXX
	 * Clear the bus reset event flag to start transactions even when
	 * interrupt is disabled during the boot process.
	 */
	if (cold) {
		int s;
		FUNC0(250); /* 2 cycles */
		s = FUNC9();
		FUNC8(&sc->fc, 0, -1);
		FUNC10(s);
	}

	return (child);
}