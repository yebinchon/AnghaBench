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
struct vtcon_softc_port {struct vtcon_port* vcsp_port; struct vtcon_softc* vcsp_sc; } ;
struct vtcon_softc {int dummy; } ;
struct vtcon_port {int vtcport_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtcon_softc*) ; 
 int VTCON_PORT_FLAG_GONE ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtcon_port*) ; 

__attribute__((used)) static void
FUNC5(void *scportx)
{
	struct vtcon_softc_port *scport;
	struct vtcon_softc *sc;
	struct vtcon_port *port;

	scport = scportx;
	sc = scport->vcsp_sc;

	FUNC0(sc);
	port = scport->vcsp_port;
	if (port == NULL) {
		FUNC3(sc);
		return;
	}
	FUNC1(port);
	FUNC3(sc);
	if ((port->vtcport_flags & VTCON_PORT_FLAG_GONE) == 0)
		FUNC4(port);
	FUNC2(port);
}