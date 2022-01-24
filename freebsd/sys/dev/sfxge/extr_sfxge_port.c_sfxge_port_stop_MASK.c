#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dma_buf; scalar_t__ update_time; } ;
struct sfxge_port {scalar_t__ init_state; int /*<<< orphan*/  link_mode; TYPE_1__ mac_stats; } ;
struct sfxge_softc {int /*<<< orphan*/ * enp; struct sfxge_port port; } ;
typedef  int /*<<< orphan*/  efx_nic_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EFX_LINK_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SFXGE_PORT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_port*) ; 
 scalar_t__ SFXGE_PORT_STARTED ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct sfxge_softc *sc)
{
	struct sfxge_port *port;
	efx_nic_t *enp;

	port = &sc->port;
	enp = sc->enp;

	FUNC1(port);

	FUNC0(port->init_state == SFXGE_PORT_STARTED,
	    ("port not started"));

	port->init_state = SFXGE_PORT_INITIALIZED;

	port->mac_stats.update_time = 0;

	/* This may call MCDI */
	(void)FUNC4(enp, B_TRUE);

	(void)FUNC5(enp, &port->mac_stats.dma_buf, 0, B_FALSE);

	port->link_mode = EFX_LINK_UNKNOWN;

	/* Destroy the common code port object. */
	FUNC6(enp);

	FUNC3(enp);

	FUNC2(port);
}