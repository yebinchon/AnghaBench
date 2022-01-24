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
struct vtcon_softc {struct vtcon_softc_port* vtcon_ports; int /*<<< orphan*/  vtcon_dev; } ;
struct vtcon_port {int vtcport_id; int /*<<< orphan*/  vtcport_tty; int /*<<< orphan*/  vtcport_mtx; struct vtcon_softc_port* vtcport_scport; struct vtcon_softc* vtcport_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  VIRTIO_CONSOLE_PORT_READY ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtcon_port*) ; 
 int /*<<< orphan*/  VTCON_TTY_PREFIX ; 
 int /*<<< orphan*/  FUNC5 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct vtcon_port* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct vtcon_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vtcon_port*) ; 
 int FUNC12 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct vtcon_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vtcon_port*) ; 
 int /*<<< orphan*/  vtcon_tty_class ; 

__attribute__((used)) static int
FUNC15(struct vtcon_softc *sc, int id)
{
	device_t dev;
	struct vtcon_softc_port *scport;
	struct vtcon_port *port;
	int error;

	dev = sc->vtcon_dev;
	scport = &sc->vtcon_ports[id];

	FUNC1(sc, id);
	FUNC0(scport->vcsp_port == NULL);

	port = FUNC7(sizeof(struct vtcon_port), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (port == NULL)
		return (ENOMEM);

	port->vtcport_sc = sc;
	port->vtcport_scport = scport;
	port->vtcport_id = id;
	FUNC8(&port->vtcport_mtx, "vtcpmtx", NULL, MTX_DEF);
	port->vtcport_tty = FUNC9(&vtcon_tty_class, port,
	    &port->vtcport_mtx);

	error = FUNC12(port);
	if (error) {
		FUNC3(port);
		FUNC14(port);
		return (error);
	}

	FUNC2(sc);
	FUNC3(port);
	scport->vcsp_port = port;
	FUNC11(port);
	FUNC13(port, VIRTIO_CONSOLE_PORT_READY, 1);
	FUNC4(port);
	FUNC5(sc);

	FUNC10(port->vtcport_tty, NULL, "%s%r.%r", VTCON_TTY_PREFIX,
	    FUNC6(dev), id);

	return (0);
}