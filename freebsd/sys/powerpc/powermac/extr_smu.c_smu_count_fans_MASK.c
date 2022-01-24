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
struct smu_softc {int /*<<< orphan*/ * sc_fans; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct smu_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct smu_softc *sc;
	phandle_t child, node, root;
	int nfans = 0;

	node = FUNC6(dev);
	sc = FUNC3(dev);

	/* First find the fanroots and count the number of fans. */
	for (root = FUNC0(node); root != 0; root = FUNC2(root)) {
		char name[32];
		FUNC5(name, 0, sizeof(name));
		FUNC1(root, "name", name, sizeof(name));
		if (FUNC8(name, "rpm-fans", 9) == 0 ||
		    FUNC8(name, "pwm-fans", 9) == 0 ||
		    FUNC8(name, "fans", 5) == 0)
			for (child = FUNC0(root); child != 0;
			     child = FUNC2(child)) {
				nfans++;
				/* When allocated, fill the fan properties. */
				if (sc->sc_fans != NULL) {
					FUNC7(dev, child,
							  nfans - 1);
				}
			}
	}
	if (nfans == 0) {
		FUNC4(dev, "WARNING: No fans detected!\n");
		return (0);
	}
	return (nfans);
}