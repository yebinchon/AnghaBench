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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  size_t u_int ;
struct trapframe {int dummy; } ;
struct hrowpic_softc {int /*<<< orphan*/ * sc_vector; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  HPIC_PRIMARY ; 
 int /*<<< orphan*/  HPIC_SECONDARY ; 
 int /*<<< orphan*/  HPIC_STATUS ; 
 size_t HROWPIC_IRQMAX ; 
 struct hrowpic_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hrowpic_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct trapframe*) ; 

__attribute__((used)) static void
FUNC3(device_t dev, struct trapframe *tf)
{
	struct hrowpic_softc *sc;
	uint64_t mask;
	uint32_t reg;
	u_int irq;

	sc = FUNC0(dev);
	while (1) {
		mask = FUNC1(sc, HPIC_STATUS, HPIC_SECONDARY);
		reg = FUNC1(sc, HPIC_STATUS, HPIC_PRIMARY);
		mask = (mask << 32) | reg;
		if (mask == 0)
			break;

		irq = 0;
		while (irq < HROWPIC_IRQMAX) {
			if (mask & 1)
				FUNC2(sc->sc_vector[irq], tf);
			mask >>= 1;
			irq++;
		}
	}
}