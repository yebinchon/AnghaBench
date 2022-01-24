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
struct vtcon_softc_port {struct vtcon_port* vcsp_port; } ;
struct vtcon_softc {int vtcon_flags; int vtcon_max_ports; struct vtcon_softc_port* vtcon_ports; int /*<<< orphan*/  vtcon_ctrl_rxvq; } ;
struct vtcon_port {int dummy; } ;

/* Variables and functions */
 int VTCON_FLAG_MULTIPORT ; 
 int /*<<< orphan*/  FUNC0 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vtcon_port*) ; 

__attribute__((used)) static void
FUNC6(struct vtcon_softc *sc)
{
	struct vtcon_softc_port *scport;
	struct vtcon_port *port;
	int i;

	FUNC0(sc);

	if (sc->vtcon_flags & VTCON_FLAG_MULTIPORT)
		FUNC4(sc->vtcon_ctrl_rxvq);

	for (i = 0; i < sc->vtcon_max_ports; i++) {
		scport = &sc->vtcon_ports[i];

		port = scport->vcsp_port;
		if (port == NULL)
			continue;

		FUNC1(port);
		FUNC5(port);
		FUNC2(port);
	}

	FUNC3(sc);
}