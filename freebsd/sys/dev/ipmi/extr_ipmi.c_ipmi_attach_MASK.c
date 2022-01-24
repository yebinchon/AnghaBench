#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct ipmi_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct ipmi_softc {TYPE_1__ ipmi_ich; int /*<<< orphan*/  ipmi_irq; int /*<<< orphan*/ * ipmi_intr; int /*<<< orphan*/ * ipmi_irq_res; } ;
struct intr_config_hook {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ipmi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct ipmi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int ipmi_attached ; 
 int /*<<< orphan*/  ipmi_startup ; 

int
FUNC5(device_t dev)
{
	struct ipmi_softc *sc = FUNC3(dev);
	int error;

	if (sc->ipmi_irq_res != NULL && sc->ipmi_intr != NULL) {
		error = FUNC0(dev, sc->ipmi_irq_res, INTR_TYPE_MISC,
		    NULL, sc->ipmi_intr, sc, &sc->ipmi_irq);
		if (error) {
			FUNC4(dev, "can't set up interrupt\n");
			return (error);
		}
	}

	FUNC1(&sc->ipmi_ich, sizeof(struct intr_config_hook));
	sc->ipmi_ich.ich_func = ipmi_startup;
	sc->ipmi_ich.ich_arg = sc;
	if (FUNC2(&sc->ipmi_ich) != 0) {
		FUNC4(dev, "can't establish configuration hook\n");
		return (ENOMEM);
	}

	ipmi_attached = 1;
	return (0);
}