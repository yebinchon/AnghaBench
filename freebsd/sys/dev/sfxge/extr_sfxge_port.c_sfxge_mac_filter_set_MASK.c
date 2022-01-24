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
struct sfxge_port {scalar_t__ init_state; } ;
struct sfxge_softc {struct sfxge_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sfxge_port*) ; 
 scalar_t__ SFXGE_PORT_STARTED ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_port*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct sfxge_softc*) ; 

int
FUNC4(struct sfxge_softc *sc)
{
	struct sfxge_port *port = &sc->port;
	int rc;

	FUNC0(port);
	/*
	 * The function may be called without softc_lock held in the
	 * case of SIOCADDMULTI and SIOCDELMULTI ioctls. ioctl handler
	 * checks IFF_DRV_RUNNING flag which implies port started, but
	 * it is not guaranteed to remain. softc_lock shared lock can't
	 * be held in the case of these ioctls processing, since it
	 * results in failure where kernel complains that non-sleepable
	 * lock is held in sleeping thread. Both problems are repeatable
	 * on LAG with LACP proto bring up.
	 */
	if (FUNC2(port->init_state == SFXGE_PORT_STARTED))
		rc = FUNC3(sc);
	else
		rc = 0;
	FUNC1(port);
	return (rc);
}