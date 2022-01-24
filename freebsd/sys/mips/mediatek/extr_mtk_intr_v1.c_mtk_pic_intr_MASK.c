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
struct mtk_pic_softc {int /*<<< orphan*/  pic_dev; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MTK_IRQ0STAT ; 
 int /*<<< orphan*/  MTK_IRQ1STAT ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pic_softc*,unsigned int) ; 
 unsigned int FUNC2 (struct mtk_pic_softc*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_pic_softc*,unsigned int) ; 

__attribute__((used)) static int
FUNC7(void *arg)
{
	struct mtk_pic_softc *sc = arg;
	struct thread *td;
	uint32_t i, intr;

	td = curthread;
	/* Workaround: do not inflate intr nesting level */
	td->td_intr_nesting_level--;

#ifdef _notyet_
	intr = READ4(sc, MTK_IRQ1STAT);
	while ((i = fls(intr)) != 0) {
		i--;
		intr &= ~(1u << i);

		if (intr_isrc_dispatch(PIC_INTR_ISRC(sc, i),
		    curthread->td_intr_frame) != 0) {
			device_printf(sc->pic_dev,
			    "Stray interrupt %u detected\n", i);
			pic_irq_mask(sc, i);
			continue;
		}
	}

	KASSERT(i == 0, ("all interrupts handled"));
#endif

	intr = FUNC2(sc, MTK_IRQ0STAT);

	while ((i = FUNC4(intr)) != 0) {
		i--;
		intr &= ~(1u << i);

		if (FUNC5(FUNC1(sc, i),
		    curthread->td_intr_frame) != 0) {
			FUNC3(sc->pic_dev,
				"Stray interrupt %u detected\n", i);
			FUNC6(sc, i);
			continue;
		}
	}

	FUNC0(i == 0, ("all interrupts handled"));

	td->td_intr_nesting_level++;

	return (FILTER_HANDLED);
}