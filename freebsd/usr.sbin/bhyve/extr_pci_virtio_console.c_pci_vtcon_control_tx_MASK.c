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
struct pci_vtcon_softc {int vsc_ready; size_t vsc_nports; struct pci_vtcon_port* vsc_ports; } ;
struct pci_vtcon_port {int /*<<< orphan*/  vsp_console; int /*<<< orphan*/  vsp_open; int /*<<< orphan*/  vsp_enabled; struct pci_vtcon_softc* vsp_sc; } ;
struct pci_vtcon_control {int event; size_t id; int value; } ;
struct iovec {scalar_t__ iov_base; } ;

/* Variables and functions */
 int VTCON_CONSOLE_PORT ; 
#define  VTCON_DEVICE_READY 129 
 int VTCON_MAXPORTS ; 
#define  VTCON_PORT_READY 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_vtcon_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_vtcon_softc*,struct pci_vtcon_control*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_vtcon_port*,int) ; 

__attribute__((used)) static void
FUNC5(struct pci_vtcon_port *port, void *arg, struct iovec *iov,
    int niov)
{
	struct pci_vtcon_softc *sc;
	struct pci_vtcon_port *tmp;
	struct pci_vtcon_control resp, *ctrl;
	int i;

	FUNC1(niov == 1);

	sc = port->vsp_sc;
	ctrl = (struct pci_vtcon_control *)iov->iov_base;

	switch (ctrl->event) {
	case VTCON_DEVICE_READY:
		sc->vsc_ready = true;
		/* set port ready events for registered ports */
		for (i = 0; i < VTCON_MAXPORTS; i++) {
			tmp = &sc->vsc_ports[i];
			if (tmp->vsp_enabled)
				FUNC2(tmp);

			if (tmp->vsp_open)
				FUNC4(tmp, true);
		}
		break;

	case VTCON_PORT_READY:
		if (ctrl->id >= sc->vsc_nports) {
			FUNC0(("VTCON_PORT_READY event for unknown port %d\n",
			    ctrl->id));
			return;
		}

		tmp = &sc->vsc_ports[ctrl->id];
		if (tmp->vsp_console) {
			resp.event = VTCON_CONSOLE_PORT;
			resp.id = ctrl->id;
			resp.value = 1;
			FUNC3(sc, &resp, NULL, 0);
		}
		break;
	}
}