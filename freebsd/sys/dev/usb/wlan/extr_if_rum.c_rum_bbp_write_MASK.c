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
typedef  int uint32_t ;
struct rum_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int RT2573_BBP_BUSY ; 
 int /*<<< orphan*/  RT2573_PHY_CSR3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct rum_softc *sc, uint8_t reg, uint8_t val)
{
	uint32_t tmp;

	FUNC0(2, "reg=0x%08x\n", reg);

	if (FUNC2(sc) != 0) {
		FUNC1(sc->sc_dev, "could not write to BBP\n");
		return;
	}

	tmp = RT2573_BBP_BUSY | (reg & 0x7f) << 8 | val;
	FUNC3(sc, RT2573_PHY_CSR3, tmp);
}