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
typedef  unsigned long uint64_t ;
struct trapframe {int dummy; } ;
struct ps3pic_softc {unsigned long* mask_thread0; unsigned long* mask_thread1; int /*<<< orphan*/ * sc_vector; int /*<<< orphan*/ * bitmap_thread1; int /*<<< orphan*/ * bitmap_thread0; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuid ; 
 struct ps3pic_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(device_t dev, struct trapframe *tf)
{
	uint64_t bitmap, mask;
	int irq;
	struct ps3pic_softc *sc;

	sc = FUNC2(dev);

	if (FUNC0(cpuid) == 0) {
		bitmap = FUNC1(&sc->bitmap_thread0[0]);
		mask = sc->mask_thread0[0];
	} else {
		bitmap = FUNC1(&sc->bitmap_thread1[0]);
		mask = sc->mask_thread1[0];
	}
	FUNC5();

	while ((irq = FUNC3(bitmap & mask) - 1) != -1) {
		bitmap &= ~(1UL << irq);
		FUNC4(sc->sc_vector[63 - irq], tf);
	}
}