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
struct sfxge_intr {int n_alloc; struct resource* msix_res; int /*<<< orphan*/  type; } ;
struct sfxge_softc {int /*<<< orphan*/  evq_max; struct sfxge_intr intr; int /*<<< orphan*/  dev; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_INTR_MESSAGE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct resource* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sfxge_softc*,int) ; 

__attribute__((used)) static int
FUNC9(struct sfxge_softc *sc)
{
	struct sfxge_intr *intr;
	struct resource *resp;
	device_t dev;
	int count;
	int rid;

	dev = sc->dev;
	intr = &sc->intr;

	/* Check if MSI-X is available. */
	count = FUNC6(dev);
	if (count == 0)
		return (EINVAL);

	/* Do not try to allocate more than already estimated EVQ maximum */
	FUNC0(sc->evq_max > 0, ("evq_max is zero"));
	count = FUNC1(count, sc->evq_max);

	rid = FUNC2(4);
	resp = FUNC3(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (resp == NULL)
		return (ENOMEM);

	if (FUNC5(dev, &count) != 0) {
		FUNC4(dev, SYS_RES_MEMORY, rid, resp);
		return (ENOMEM);
	}

	/* Allocate interrupt handlers. */
	if (FUNC8(sc, count) != 0) {
		FUNC4(dev, SYS_RES_MEMORY, rid, resp);
		FUNC7(dev);
		return (ENOMEM);
	}

	intr->type = EFX_INTR_MESSAGE;
	intr->n_alloc = count;
	intr->msix_res = resp;

	return (0);
}