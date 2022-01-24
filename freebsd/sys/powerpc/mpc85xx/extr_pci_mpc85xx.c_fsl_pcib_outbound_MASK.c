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
struct fsl_pcib_softc {int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct fsl_pcib_softc *sc, int wnd, int res, uint64_t start,
    uint64_t size, uint64_t pci_start)
{
	uint32_t attr, bar, tar;

	switch (res) {
	case SYS_RES_MEMORY:
		attr = 0x80044000 | (FUNC5(size) - 2);
		break;
	case SYS_RES_IOPORT:
		attr = 0x80088000 | (FUNC5(size) - 2);
		break;
	default:
		attr = 0x0004401f;
		break;
	}
	bar = start >> 12;
	tar = pci_start >> 12;

	FUNC4(sc->sc_bst, sc->sc_bsh, FUNC0(wnd), tar);
	FUNC4(sc->sc_bst, sc->sc_bsh, FUNC1(wnd), 0);
	FUNC4(sc->sc_bst, sc->sc_bsh, FUNC3(wnd), bar);
	FUNC4(sc->sc_bst, sc->sc_bsh, FUNC2(wnd), attr);
}