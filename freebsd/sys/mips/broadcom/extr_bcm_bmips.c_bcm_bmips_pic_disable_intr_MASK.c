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
struct intr_irqsrc {int dummy; } ;
struct bcm_mips_irqsrc {int /*<<< orphan*/  ivec; TYPE_1__* cpuirq; } ;
struct bcm_bmips_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  mips_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_bmips_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_bmips_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, struct intr_irqsrc *irqsrc)
{
	struct bcm_bmips_softc	*sc;
	struct bcm_mips_irqsrc	*isrc;

	sc = FUNC2(dev);
	isrc = (struct bcm_mips_irqsrc *)irqsrc;

	FUNC0(isrc->cpuirq != NULL, ("no assigned MIPS IRQ"));

	FUNC1(sc, isrc->cpuirq->mips_irq, isrc->ivec);
}