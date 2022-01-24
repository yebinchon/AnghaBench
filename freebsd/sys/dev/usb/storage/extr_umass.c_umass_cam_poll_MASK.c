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
struct umass_softc {int /*<<< orphan*/  sc_xfer; } ;
struct cam_sim {scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct umass_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  UDMASS_SCSI ; 
 int /*<<< orphan*/  UMASS_T_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct cam_sim *sim)
{
	struct umass_softc *sc = (struct umass_softc *)sim->softc;

	if (sc == NULL)
		return;

	FUNC0(sc, UDMASS_SCSI, "CAM poll\n");

	FUNC1(sc->sc_xfer, UMASS_T_MAX);
}