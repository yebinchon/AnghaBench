#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xpcib_softc {struct pcifront_device* pdev; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; } ;
struct pcifront_device {TYPE_1__* xdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  otherend_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct xpcib_softc *sc = (struct xpcib_softc *)FUNC3(dev);
	struct pcifront_device *pdev = (struct pcifront_device *)FUNC1(FUNC2(dev));

	FUNC0("xpcib probe (bus=%d)\n", FUNC4(dev));

	sc->domain = pdev->xdev->otherend_id;
	sc->bus = FUNC4(dev);
	sc->pdev = pdev;
	
	return 0;
}