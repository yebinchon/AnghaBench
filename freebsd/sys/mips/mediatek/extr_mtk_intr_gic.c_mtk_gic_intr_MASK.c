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
struct mtk_gic_softc {int /*<<< orphan*/  gic_dev; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gic_softc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MTK_INTMASK ; 
 int /*<<< orphan*/  MTK_INTSTAT ; 
 unsigned int FUNC2 (struct mtk_gic_softc*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_gic_softc*,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	struct mtk_gic_softc *sc = arg;
	struct thread *td;
	uint32_t i, intr;

	td = curthread;
	/* Workaround: do not inflate intr nesting level */
	td->td_intr_nesting_level--;

	intr = FUNC2(sc, MTK_INTSTAT) & FUNC2(sc, MTK_INTMASK);
	while ((i = FUNC4(intr)) != 0) {
		i--;
		intr &= ~(1u << i);

		if (FUNC6(FUNC0(sc, i),
		    curthread->td_intr_frame) != 0) {
			FUNC3(sc->gic_dev,
				"Stray interrupt %u detected\n", i);
			FUNC5(sc, i);
			continue;
		}
	}

	FUNC1(i == 0, ("all interrupts handled"));

	td->td_intr_nesting_level++;

	return (FILTER_HANDLED);
}