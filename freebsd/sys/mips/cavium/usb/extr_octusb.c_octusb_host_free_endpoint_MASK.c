#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct octusb_td {TYPE_2__* qh; } ;
struct octusb_softc {TYPE_1__* sc_port; } ;
struct TYPE_4__ {scalar_t__ ep_allocated; size_t root_port_index; int /*<<< orphan*/  ep_handle; int /*<<< orphan*/  fixup_handle; struct octusb_softc* sc; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct octusb_td *td)
{
	struct octusb_softc *sc;

	if (td->qh->ep_allocated == 0)
		return;

	/* get softc */
	sc = td->qh->sc;

	if (td->qh->fixup_handle >= 0) {
		/* cancel, if any */
		FUNC0(&sc->sc_port[td->qh->root_port_index].state,
		    td->qh->ep_handle, td->qh->fixup_handle);
	}
	FUNC1(&sc->sc_port[td->qh->root_port_index].state, td->qh->ep_handle);

	td->qh->ep_allocated = 0;
}