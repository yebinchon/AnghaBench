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
struct pcf_softc {scalar_t__ res_irq; scalar_t__ res_ioport; int /*<<< orphan*/  pcf_lock; int /*<<< orphan*/  rid_ioport; int /*<<< orphan*/  rid_irq; int /*<<< orphan*/  intr_cookie; int /*<<< orphan*/  iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pcf_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct pcf_softc *sc;
	int rv;

	sc = FUNC0(dev);

	if ((rv = FUNC1(dev)) != 0)
		return (rv);

	if ((rv = FUNC4(dev, sc->iicbus)) != 0)
		return (rv);

	if (sc->res_irq != 0) {
		FUNC3(dev, sc->res_irq, sc->intr_cookie);
		FUNC2(dev, SYS_RES_IRQ, sc->rid_irq, sc->res_irq);
	}

	FUNC2(dev, SYS_RES_IOPORT, sc->rid_ioport, sc->res_ioport);
	FUNC5(&sc->pcf_lock);

	return (0);
}