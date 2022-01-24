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
struct vtcon_softc_port {struct virtqueue* vcsp_invq; struct vtcon_port* vcsp_port; } ;
struct vtcon_softc {int vtcon_max_ports; struct vtcon_softc_port* vtcon_ports; } ;
struct vtcon_port {int dummy; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtcon_softc_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtcon_port*) ; 

__attribute__((used)) static void
FUNC6(struct vtcon_softc *sc)
{
	struct vtcon_softc_port *scport;
	struct vtcon_port *port;
	struct virtqueue *vq;
	int i;

	if (sc->vtcon_ports == NULL)
		return;

	FUNC0(sc);
	for (i = 0; i < sc->vtcon_max_ports; i++) {
		scport = &sc->vtcon_ports[i];

		port = scport->vcsp_port;
		if (port != NULL) {
			scport->vcsp_port = NULL;
			FUNC1(port);
			FUNC2(sc);
			FUNC5(port);
			FUNC0(sc);
		}

		vq = scport->vcsp_invq;
		if (vq != NULL)
			FUNC4(vq);
	}
	FUNC2(sc);

	FUNC3(sc->vtcon_ports, M_DEVBUF);
	sc->vtcon_ports = NULL;
}