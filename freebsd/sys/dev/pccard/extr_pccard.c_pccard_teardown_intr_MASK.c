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
struct pccard_function {int /*<<< orphan*/ * intr_handler_cookie; int /*<<< orphan*/ * intr_handler_arg; int /*<<< orphan*/ * intr_handler; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCCARD_CCR_OPTION ; 
 int PCCARD_CCR_OPTION_IREQ_ENABLE ; 
 struct pccard_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pccard_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,void*) ; 
 int FUNC3 (struct pccard_function*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pccard_function*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct pccard_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child, struct resource *r,
    void *cookie)
{
	struct pccard_softc *sc = FUNC1(dev);
	struct pccard_ivar *ivar = FUNC0(child);
	struct pccard_function *pf = ivar->pf;
	int ret;

	if (FUNC5(sc)) {
		FUNC4(pf, PCCARD_CCR_OPTION,
		    FUNC3(pf, PCCARD_CCR_OPTION) &
		    ~PCCARD_CCR_OPTION_IREQ_ENABLE);
	}
	ret = FUNC2(dev, child, r, cookie);
	if (ret == 0) {
		pf->intr_handler = NULL;
		pf->intr_handler_arg = NULL;
		pf->intr_handler_cookie = NULL;
	}

	return (ret);
}