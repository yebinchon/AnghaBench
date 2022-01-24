#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct oce_bmbx {int dummy; } ;
struct TYPE_16__ {int size_of_struct; } ;
struct TYPE_15__ {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  bsmbx; scalar_t__ be3_native; TYPE_4__ macaddr; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAC_ADDRESS_TYPE_NETWORK ; 
 int OCE_FLAGS_BE3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC11 (TYPE_1__*) ; 

int
FUNC12(POCE_SOFTC sc)
{
	int rc = 0;

	rc = FUNC3(sc);
	if (rc)
		return rc;
	
	/* create the bootstrap mailbox */
	rc = FUNC4(sc, sizeof(struct oce_bmbx), &sc->bsmbx, 0);
	if (rc) {
		FUNC2(sc->dev, "Mailbox alloc failed\n");
		return rc;
	}

	rc = FUNC11(sc);
	if (rc)
		goto error;
		

	rc = FUNC9(sc);
	if (rc)
		goto error;


	rc = FUNC7(sc);
	if (rc)
		goto error;


	rc = FUNC6(sc);
	if (rc)
		goto error;


	sc->macaddr.size_of_struct = 6;
	rc = FUNC10(sc, 0, 1, MAC_ADDRESS_TYPE_NETWORK,
					&sc->macaddr);
	if (rc)
		goto error;
	
	if ((FUNC0(sc) && (sc->flags & OCE_FLAGS_BE3)) || FUNC1(sc)) {
		rc = FUNC8(sc);
		if (rc)
			goto error;
	} else
		sc->be3_native = 0;
	
	return rc;

error:
	FUNC5(sc, &sc->bsmbx);
	FUNC2(sc->dev, "Hardware initialisation failed\n");
	return rc;
}