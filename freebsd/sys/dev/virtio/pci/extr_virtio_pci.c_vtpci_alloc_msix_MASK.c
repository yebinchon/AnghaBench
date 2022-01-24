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
struct vtpci_softc {int vtpci_nmsix_resources; int /*<<< orphan*/  vtpci_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vtpci_softc *sc, int nvectors)
{
	device_t dev;
	int nmsix, cnt, required;

	dev = sc->vtpci_dev;

	/* Allocate an additional vector for the config changes. */
	required = nvectors + 1;

	nmsix = FUNC1(dev);
	if (nmsix < required)
		return (1);

	cnt = required;
	if (FUNC0(dev, &cnt) == 0 && cnt >= required) {
		sc->vtpci_nmsix_resources = required;
		return (0);
	}

	FUNC2(dev);

	return (1);
}