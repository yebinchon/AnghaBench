#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * bdev; } ;
struct TYPE_6__ {TYPE_5__ fc; scalar_t__ bsh; scalar_t__ bst; int /*<<< orphan*/ * bsr; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * ih; } ;
typedef  TYPE_1__ fwohci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FWOHCI_INTMASKCLR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  OHCI_INT_EN ; 
 int /*<<< orphan*/  PCI_CBMEM ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int
FUNC13(device_t self)
{
	fwohci_softc_t *sc = FUNC6(self);
	int s;

	s = FUNC11();

	if (sc->bsr)
		FUNC9(sc, self);

	FUNC1(self);

	if (sc->fc.bdev) {
		FUNC5(self, sc->fc.bdev);
		sc->fc.bdev = NULL;
	}

	/* disable interrupts that might have been switched on */
	if (sc->bst && sc->bsh)
		FUNC3(sc->bst, sc->bsh,
				  FWOHCI_INTMASKCLR, OHCI_INT_EN);

	if (sc->irq_res) {
		int err;
		if (sc->ih) {
			err = FUNC4(self, sc->irq_res, sc->ih);
			if (err)
				FUNC7(self,
					 "Could not tear down irq, %d\n", err);
			sc->ih = NULL;
		}
		FUNC2(self, SYS_RES_IRQ, 0, sc->irq_res);
		sc->irq_res = NULL;
	}

	if (sc->bsr) {
		FUNC2(self, SYS_RES_MEMORY, PCI_CBMEM, sc->bsr);
		sc->bsr = NULL;
		sc->bst = 0;
		sc->bsh = 0;
	}

	FUNC8(sc, self);
	FUNC10(FUNC0(&sc->fc));
	FUNC12(s);

	return 0;
}