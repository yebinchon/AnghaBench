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
struct vqueue_info {int dummy; } ;
struct pci_vtcon_softc {int dummy; } ;
struct pci_vtcon_port {int vsp_rx_ready; } ;

/* Variables and functions */
 struct pci_vtcon_port* FUNC0 (struct pci_vtcon_softc*,struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct vqueue_info*) ; 

__attribute__((used)) static void
FUNC2(void *vsc, struct vqueue_info *vq)
{
	struct pci_vtcon_softc *sc;
	struct pci_vtcon_port *port;

	sc = vsc;
	port = FUNC0(sc, vq);

	if (!port->vsp_rx_ready) {
		port->vsp_rx_ready = 1;
		FUNC1(vq);
	}
}