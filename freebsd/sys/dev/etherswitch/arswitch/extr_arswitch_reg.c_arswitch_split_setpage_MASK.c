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
typedef  int uint16_t ;
struct arswitch_softc {int page; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct arswitch_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(device_t dev, uint32_t addr, uint16_t *phy,
    uint16_t *reg)
{
	struct arswitch_softc *sc = FUNC3(dev);
	uint16_t page;

	page = (addr >> 9) & 0x1ff;
	*phy = (addr >> 6) & 0x7;
	*reg = (addr >> 1) & 0x1f;

	if (sc->page != page) {
		FUNC1(FUNC2(dev), 0x18, 0, page);
		FUNC0(2000);
		sc->page = page;
	}
}