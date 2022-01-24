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
struct pci_mv_softc {int /*<<< orphan*/ ** phy; int /*<<< orphan*/  dev; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int ENOENT ; 
 int MV_MAX_LANES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct pci_mv_softc *sc)
{
	int i, rv;

	for (i = 0; i < MV_MAX_LANES; i++) {
		rv =  FUNC2(sc->dev, sc->node, i, &(sc->phy[i]));
		if (rv != 0 && rv != ENOENT) {
	  		FUNC0(sc->dev, "Cannot get phy[%d]\n", i);
	  		goto fail;
	  	}
	  	if (sc->phy[i] == NULL)
	  		continue;
	  	rv = FUNC1(sc->phy[i]);
	  	if (rv != 0) {
	  		FUNC0(sc->dev, "Cannot enable phy[%d]\n", i);
	  		goto fail;
	  	}
	  }
	  return (0);

fail:
	for (i = 0; i < MV_MAX_LANES; i++) {
		if (sc->phy[i] == NULL)
			continue;
		FUNC3(sc->phy[i]);
	  }

	return (rv);
}