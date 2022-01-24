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
typedef  size_t u_int ;
struct trapframe {int dummy; } ;
struct plic_softc {int /*<<< orphan*/  dev; struct plic_irqsrc* isrcs; } ;
struct plic_irqsrc {int /*<<< orphan*/  isrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct trapframe*) ; 

__attribute__((used)) static inline void
FUNC2(struct plic_softc *sc, u_int irq,
    struct trapframe *tf)
{
	struct plic_irqsrc *src;

	src = &sc->isrcs[irq];

	if (FUNC1(&src->isrc, tf) != 0)
		FUNC0(sc->dev, "Stray irq %u detected\n", irq);
}