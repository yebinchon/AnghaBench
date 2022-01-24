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
struct nfe_softc {scalar_t__ nfe_msix; int /*<<< orphan*/  nfe_nointrs; int /*<<< orphan*/  nfe_irq_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(struct nfe_softc *sc)
{

	if (sc->nfe_msix != 0) {
		/* XXX Should have a better way to disable interrupts! */
		if (FUNC0(sc, sc->nfe_irq_mask) != 0)
			FUNC1(sc, sc->nfe_irq_mask, sc->nfe_nointrs);
	} else
		FUNC1(sc, sc->nfe_irq_mask, sc->nfe_nointrs);
}