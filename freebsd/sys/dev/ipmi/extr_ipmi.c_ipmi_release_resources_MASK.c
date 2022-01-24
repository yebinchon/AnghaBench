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
struct ipmi_softc {scalar_t__* ipmi_io_res; scalar_t__ ipmi_io_rid; int /*<<< orphan*/  ipmi_io_type; scalar_t__ ipmi_irq_res; scalar_t__ ipmi_irq_rid; scalar_t__ ipmi_irq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MAX_RES ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct ipmi_softc* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(device_t dev)
{
	struct ipmi_softc *sc;
	int i;

	sc = FUNC2(dev);
	if (sc->ipmi_irq)
		FUNC1(dev, sc->ipmi_irq_res, sc->ipmi_irq);
	if (sc->ipmi_irq_res)
		FUNC0(dev, SYS_RES_IRQ, sc->ipmi_irq_rid,
		    sc->ipmi_irq_res);
	for (i = 0; i < MAX_RES; i++)
		if (sc->ipmi_io_res[i])
			FUNC0(dev, sc->ipmi_io_type,
			    sc->ipmi_io_rid + i, sc->ipmi_io_res[i]);
}