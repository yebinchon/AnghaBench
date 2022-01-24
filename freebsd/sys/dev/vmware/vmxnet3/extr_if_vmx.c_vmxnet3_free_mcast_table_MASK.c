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
struct vmxnet3_softc {int /*<<< orphan*/ * vmx_mcast; int /*<<< orphan*/  vmx_mcast_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct vmxnet3_softc *sc)
{

	/* Free multicast table state shared with the device */
	if (sc->vmx_mcast != NULL) {
		FUNC0(&sc->vmx_mcast_dma);
		sc->vmx_mcast = NULL;
	}
}