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
typedef  int /*<<< orphan*/  uint16_t ;
struct vtcon_softc_port {struct vtcon_port* vcsp_port; } ;
struct vtcon_softc {struct vtcon_softc_port* vtcon_ports; } ;
struct vtcon_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtcon_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtcon_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vtcon_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct vtcon_softc *sc)
{
	struct vtcon_port *port;
	struct vtcon_softc_port *scport;
	uint16_t cols, rows;

	FUNC4(sc, &cols, &rows);

	/*
	 * For now, assume the first (only) port is the console. Note
	 * QEMU does not implement this feature yet.
	 */
	scport = &sc->vtcon_ports[0];

	FUNC0(sc);
	port = scport->vcsp_port;

	if (port != NULL) {
		FUNC1(port);
		FUNC3(sc);
		FUNC5(port, cols, rows);
		FUNC2(port);
	} else
		FUNC3(sc);
}