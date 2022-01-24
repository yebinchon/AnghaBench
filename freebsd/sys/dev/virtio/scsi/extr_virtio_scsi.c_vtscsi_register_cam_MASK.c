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
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_sim; int /*<<< orphan*/ * vtscsi_path; int /*<<< orphan*/  vtscsi_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct vtscsi_softc *sc)
{
	device_t dev;
	int registered, error;

	dev = sc->vtscsi_dev;
	registered = 0;

	FUNC0(sc);

	if (FUNC6(sc->vtscsi_sim, dev, 0) != CAM_SUCCESS) {
		error = ENOMEM;
		FUNC3(dev, "cannot register XPT bus\n");
		goto fail;
	}

	registered = 1;

	if (FUNC7(&sc->vtscsi_path, NULL,
	    FUNC2(sc->vtscsi_sim), CAM_TARGET_WILDCARD,
	    CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		error = ENOMEM;
		FUNC3(dev, "cannot create bus path\n");
		goto fail;
	}

	if (FUNC4(sc) != CAM_REQ_CMP) {
		error = EIO;
		FUNC3(dev, "cannot register async callback\n");
		goto fail;
	}

	FUNC1(sc);

	return (0);

fail:
	if (sc->vtscsi_path != NULL) {
		FUNC8(sc->vtscsi_path);
		sc->vtscsi_path = NULL;
	}

	if (registered != 0)
		FUNC5(FUNC2(sc->vtscsi_sim));

	FUNC1(sc);

	return (error);
}