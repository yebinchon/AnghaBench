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
struct vge_softc {int /*<<< orphan*/  vge_dev; } ;

/* Variables and functions */
 int FUNC0 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  VGE_MIBCSR ; 
 int VGE_MIBCSR_CLR ; 
 int VGE_MIBCSR_FREEZE ; 
 int VGE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct vge_softc *sc)
{
	int i;

	FUNC1(sc, VGE_MIBCSR,
	    FUNC0(sc, VGE_MIBCSR) | VGE_MIBCSR_FREEZE);
	FUNC1(sc, VGE_MIBCSR,
	    FUNC0(sc, VGE_MIBCSR) | VGE_MIBCSR_CLR);
	for (i = VGE_TIMEOUT; i > 0; i--) {
		FUNC2(1);
		if ((FUNC0(sc, VGE_MIBCSR) & VGE_MIBCSR_CLR) == 0)
			break;
	}
	if (i == 0)
		FUNC3(sc->vge_dev, "MIB clear timed out!\n");
	FUNC1(sc, VGE_MIBCSR, FUNC0(sc, VGE_MIBCSR) &
	    ~VGE_MIBCSR_FREEZE);
}