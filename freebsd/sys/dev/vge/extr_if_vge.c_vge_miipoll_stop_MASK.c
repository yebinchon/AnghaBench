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
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  VGE_MIICMD ; 
 int /*<<< orphan*/  VGE_MIISTS ; 
 int VGE_MIISTS_IIDL ; 
 int VGE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct vge_softc *sc)
{
	int i;

	FUNC1(sc, VGE_MIICMD, 0);

	for (i = 0; i < VGE_TIMEOUT; i++) {
		FUNC2(1);
		if (FUNC0(sc, VGE_MIISTS) & VGE_MIISTS_IIDL)
			break;
	}

	if (i == VGE_TIMEOUT)
		FUNC3(sc->vge_dev, "failed to idle MII autopoll\n");
}