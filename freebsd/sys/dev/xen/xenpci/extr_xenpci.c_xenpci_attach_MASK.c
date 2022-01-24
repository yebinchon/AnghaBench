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
struct xenpci_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct xenpci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct xenpci_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct xenpci_softc *scp = FUNC0(dev);
	int error;

	error = FUNC2(dev);
	if (error) {
		FUNC1(dev, "xenpci_allocate_resources failed(%d).\n",
		    error);
		goto errexit;
	}

	/*
	 * Hook the irq up to evtchn
	 */
	error = FUNC4(dev, scp);
	if (error) {
		FUNC1(dev, "xenpci_irq_init failed(%d).\n",
			error);
		goto errexit;
	}

	return (0);

errexit:
	/*
	 * Undo anything we may have done.
	 */
	FUNC3(dev);
	return (error);
}