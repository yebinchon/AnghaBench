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
typedef  unsigned int uint32_t ;
struct thread {int /*<<< orphan*/  td_intr_nesting_level; int /*<<< orphan*/  td_intr_frame; } ;
struct jz4780_pic_softc {int /*<<< orphan*/  pic_dev; } ;
struct intr_irqsrc {int dummy; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  JZ_ICPR0 ; 
 int /*<<< orphan*/  JZ_ICPR1 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct intr_irqsrc* FUNC1 (struct jz4780_pic_softc*,unsigned int) ; 
 unsigned int FUNC2 (struct jz4780_pic_softc*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (struct intr_irqsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct jz4780_pic_softc*,unsigned int) ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	struct jz4780_pic_softc *sc = arg;
	struct intr_irqsrc *isrc;
	struct thread *td;
	uint32_t i, intr;

	td = curthread;
	/* Workaround: do not inflate intr nesting level */
	td->td_intr_nesting_level--;

	intr = FUNC2(sc, JZ_ICPR0);
	while ((i = FUNC4(intr)) != 0) {
		i--;
		intr &= ~(1u << i);

		isrc = FUNC1(sc, i);
		if (FUNC5(isrc, curthread->td_intr_frame) != 0) {
			FUNC3(sc->pic_dev, "Stray interrupt %u detected\n", i);
			FUNC6(sc, i);
			continue;
		}
	}

	FUNC0(i == 0, ("all interrupts handled"));

	intr = FUNC2(sc, JZ_ICPR1);
	while ((i = FUNC4(intr)) != 0) {
		i--;
		intr &= ~(1u << i);
		i += 32;

		isrc = FUNC1(sc, i);
		if (FUNC5(isrc, curthread->td_intr_frame) != 0) {
			FUNC3(sc->pic_dev, "Stray interrupt %u detected\n", i);
			FUNC6(sc, i);
			continue;
		}
	}

	FUNC0(i == 0, ("all interrupts handled"));
	td->td_intr_nesting_level++;

	return (FILTER_HANDLED);
}