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
struct sfxge_softc {struct sfxge_port port; int /*<<< orphan*/ * enp; } ;
typedef  int /*<<< orphan*/  efx_nic_t ;
typedef  int /*<<< orphan*/  efx_link_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sfxge_port*) ; 
 scalar_t__ SFXGE_PORT_STARTED ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_port*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg, int npending)
{
	struct sfxge_softc *sc;
	efx_nic_t *enp;
	struct sfxge_port *port;
	efx_link_mode_t mode;

	sc = (struct sfxge_softc *)arg;
	enp = sc->enp;
	port = &sc->port;

	FUNC0(port);

	if (FUNC2(port->init_state != SFXGE_PORT_STARTED))
		goto done;

	/* This may sleep waiting for MCDI completion */
	(void)FUNC3(enp, &mode);
	FUNC4(sc, mode);

done:
	FUNC1(port);
}