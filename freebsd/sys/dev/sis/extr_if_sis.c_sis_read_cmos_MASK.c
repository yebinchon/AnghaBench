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
typedef  int uint8_t ;
struct sis_softc {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  X86_BUS_SPACE_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct sis_softc *sc, device_t dev, caddr_t dest, int off, int cnt)
{
	device_t		bridge;
	uint8_t			reg;
	int			i;
	bus_space_tag_t		btag;

	bridge = FUNC4(dev);
	if (bridge == NULL)
		return;
	reg = FUNC2(bridge, 0x48, 1);
	FUNC3(bridge, 0x48, reg|0x40, 1);

	/* XXX */
#if defined(__amd64__) || defined(__i386__)
	btag = X86_BUS_SPACE_IO;
#endif

	for (i = 0; i < cnt; i++) {
		FUNC1(btag, 0x0, 0x70, i + off);
		*(dest + i) = FUNC0(btag, 0x0, 0x71);
	}

	FUNC3(bridge, 0x48, reg & ~0x40, 1);
}