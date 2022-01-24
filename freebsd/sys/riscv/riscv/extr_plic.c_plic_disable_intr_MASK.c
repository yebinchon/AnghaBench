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
struct plic_softc {int dummy; } ;
struct plic_irqsrc {int /*<<< orphan*/  irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct plic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct plic_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, struct intr_irqsrc *isrc)
{
	struct plic_softc *sc;
	struct plic_irqsrc *src;

	sc = FUNC2(dev);
	src = (struct plic_irqsrc *)isrc;

	FUNC1(sc, FUNC0(src->irq), 0);
}