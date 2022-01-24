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
struct ppc_data {size_t ppc_model; size_t ppc_avm; size_t ppc_mode; size_t ppc_epp; int /*<<< orphan*/  ppbus; int /*<<< orphan*/  ppc_lock; int /*<<< orphan*/  intr_cookie; scalar_t__ res_irq; int /*<<< orphan*/  ppc_rthr; int /*<<< orphan*/  ppc_wthr; scalar_t__ ppc_fifo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ppc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ppc_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ppc_avms ; 
 char** ppc_epp_protocol ; 
 int /*<<< orphan*/ * ppc_models ; 
 int /*<<< orphan*/ * ppc_modes ; 
 int /*<<< orphan*/  ppcintr ; 

int
FUNC9(device_t dev)
{
	struct ppc_data *ppc = FUNC0(dev);
	int error;

	FUNC8(&ppc->ppc_lock, FUNC4(dev), "ppc", MTX_DEF);

	FUNC5(dev, "%s chipset (%s) in %s mode%s\n",
		      ppc_models[ppc->ppc_model], ppc_avms[ppc->ppc_avm],
		      ppc_modes[ppc->ppc_mode], (FUNC1(ppc->ppc_mode)) ?
		      ppc_epp_protocol[ppc->ppc_epp] : "");

	if (ppc->ppc_fifo)
		FUNC5(dev, "FIFO with %d/%d/%d bytes threshold\n",
			      ppc->ppc_fifo, ppc->ppc_wthr, ppc->ppc_rthr);

	if (ppc->res_irq) {
		/* default to the tty mask for registration */	/* XXX */
		error = FUNC2(dev, ppc->res_irq, INTR_TYPE_TTY |
		    INTR_MPSAFE, NULL, ppcintr, ppc, &ppc->intr_cookie);
		if (error) {
			FUNC5(dev,
			    "failed to register interrupt handler: %d\n",
			    error);
			FUNC7(&ppc->ppc_lock);
			return (error);
		}
	}

	/* add ppbus as a child of this isa to parallel bridge */
	ppc->ppbus = FUNC3(dev, "ppbus", -1);

	/*
	 * Probe the ppbus and attach devices found.
	 */
	FUNC6(ppc->ppbus);

	return (0);
}