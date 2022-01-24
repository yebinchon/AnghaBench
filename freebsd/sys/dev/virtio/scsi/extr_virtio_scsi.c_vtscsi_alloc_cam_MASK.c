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
struct vtscsi_softc {int vtscsi_nrequests; int /*<<< orphan*/ * vtscsi_sim; int /*<<< orphan*/  vtscsi_dev; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
 int VTSCSI_RESERVED_REQUESTS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vtscsi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct cam_devq*) ; 
 struct cam_devq* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  vtscsi_cam_action ; 
 int /*<<< orphan*/  vtscsi_cam_poll ; 

__attribute__((used)) static int
FUNC6(struct vtscsi_softc *sc)
{
	device_t dev;
	struct cam_devq *devq;
	int openings;

	dev = sc->vtscsi_dev;
	openings = sc->vtscsi_nrequests - VTSCSI_RESERVED_REQUESTS;

	devq = FUNC2(openings);
	if (devq == NULL) {
		FUNC5(dev, "cannot allocate SIM queue\n");
		return (ENOMEM);
	}

	sc->vtscsi_sim = FUNC1(vtscsi_cam_action, vtscsi_cam_poll,
	    "vtscsi", sc, FUNC4(dev), FUNC0(sc), 1,
	    openings, devq);
	if (sc->vtscsi_sim == NULL) {
		FUNC3(devq);
		FUNC5(dev, "cannot allocate SIM\n");
		return (ENOMEM);
	}

	return (0);
}