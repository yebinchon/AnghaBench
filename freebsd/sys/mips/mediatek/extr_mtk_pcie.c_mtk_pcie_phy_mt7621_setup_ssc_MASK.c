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
typedef  int uint32_t ;
struct mtk_pci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYSCTL_SYSCFG ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_pci_softc*,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mtk_pci_softc *sc, uint32_t off)
{
	uint32_t xtal_sel;

	xtal_sel = FUNC1(SYSCTL_SYSCFG) >> 6;
	xtal_sel &= 0x7;

	FUNC0(sc, off + 0x400, 8, 1, 1);
	FUNC0(sc, off + 0x400, 9, 2, 0);
	FUNC0(sc, off + 0x000, 4, 1, 1);
	FUNC0(sc, off + 0x100, 4, 1, 1);
	FUNC0(sc, off + 0x000, 5, 1, 0);
	FUNC0(sc, off + 0x100, 5, 1, 0);

	if (xtal_sel <= 5 && xtal_sel >= 3) {
		FUNC0(sc, off + 0x490,  6,  2, 1);
		FUNC0(sc, off + 0x4a8,  0, 12, 0x1a);
		FUNC0(sc, off + 0x4a8, 16, 12, 0x1a);
	} else {
		FUNC0(sc, off + 0x490,  6,  2, 0);
		if (xtal_sel >= 6) {
			FUNC0(sc, off + 0x4bc,  4,  2, 0x01);
			FUNC0(sc, off + 0x49c,  0, 31, 0x18000000);
			FUNC0(sc, off + 0x4a4,  0, 16, 0x18d);
			FUNC0(sc, off + 0x4a8,  0, 12, 0x4a);
			FUNC0(sc, off + 0x4a8, 16, 12, 0x4a);
			FUNC0(sc, off + 0x4a8,  0, 12, 0x11);
			FUNC0(sc, off + 0x4a8, 16, 12, 0x11);
		} else {
			FUNC0(sc, off + 0x4a8,  0, 12, 0x1a);
			FUNC0(sc, off + 0x4a8, 16, 12, 0x1a);
		}
	}

	FUNC0(sc, off + 0x4a0,  5, 1, 1);
	FUNC0(sc, off + 0x490, 22, 2, 2);
	FUNC0(sc, off + 0x490, 18, 4, 6);
	FUNC0(sc, off + 0x490, 12, 4, 2);
	FUNC0(sc, off + 0x490,  8, 4, 1);
	FUNC0(sc, off + 0x4ac, 16, 3, 0);
	FUNC0(sc, off + 0x490,  1, 3, 2);

	if (xtal_sel <= 5 && xtal_sel >= 3) {
		FUNC0(sc, off + 0x414, 6, 2, 1);
		FUNC0(sc, off + 0x414, 5, 1, 1);
	}

	FUNC0(sc, off + 0x414, 28, 2, 1);
	FUNC0(sc, off + 0x040, 17, 4, 7);
	FUNC0(sc, off + 0x040, 16, 1, 1);
	FUNC0(sc, off + 0x140, 17, 4, 7);
	FUNC0(sc, off + 0x140, 16, 1, 1);

	FUNC0(sc, off + 0x000,  5, 1, 1);
	FUNC0(sc, off + 0x100,  5, 1, 1);
	FUNC0(sc, off + 0x000,  4, 1, 0);
	FUNC0(sc, off + 0x100,  4, 1, 0);
}