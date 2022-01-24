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
struct resource {int dummy; } ;
struct pccard_softc {int dummy; } ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {void* intr_handler_cookie; int /*<<< orphan*/ * intr_handler; int /*<<< orphan*/ * intr_filter; void* intr_handler_arg; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCCARD_CCR_OPTION ; 
 int PCCARD_CCR_OPTION_IREQ_ENABLE ; 
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pccard_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pccard_function*,void**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct pccard_function*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pccard_function*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pccard_filter ; 
 int /*<<< orphan*/ * pccard_intr ; 
 scalar_t__ FUNC6 (struct pccard_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filt, driver_intr_t *intr, void *arg, 
    void **cookiep)
{
	struct pccard_softc *sc = FUNC1(dev);
	struct pccard_ivar *ivar = FUNC0(child);
	struct pccard_function *pf = ivar->pf;
	int err;

	if (pf->intr_filter != NULL || pf->intr_handler != NULL)
		FUNC3("Only one interrupt handler per function allowed");
	pf->intr_filter = filt;
	pf->intr_handler = intr;
	pf->intr_handler_arg = arg;
	err = FUNC2(dev, child, irq, flags, pccard_filter,
	    intr ? pccard_intr : NULL, pf, cookiep);
	if (err != 0) {
		pf->intr_filter = NULL;
		pf->intr_handler = NULL;
		return (err);
	}
	pf->intr_handler_cookie = *cookiep;
	if (FUNC6(sc)) {
		FUNC5(pf, PCCARD_CCR_OPTION,
		    FUNC4(pf, PCCARD_CCR_OPTION) |
		    PCCARD_CCR_OPTION_IREQ_ENABLE);
	}
	return (0);
}