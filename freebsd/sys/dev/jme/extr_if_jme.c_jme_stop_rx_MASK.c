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
struct jme_softc {int /*<<< orphan*/  jme_dev; } ;

/* Variables and functions */
 int FUNC0 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  JME_RXCSR ; 
 int JME_TIMEOUT ; 
 int RXCSR_RX_ENB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct jme_softc *sc)
{
	uint32_t reg;
	int i;

	reg = FUNC0(sc, JME_RXCSR);
	if ((reg & RXCSR_RX_ENB) == 0)
		return;
	reg &= ~RXCSR_RX_ENB;
	FUNC1(sc, JME_RXCSR, reg);
	for (i = JME_TIMEOUT; i > 0; i--) {
		FUNC2(1);
		if ((FUNC0(sc, JME_RXCSR) & RXCSR_RX_ENB) == 0)
			break;
	}
	if (i == 0)
		FUNC3(sc->jme_dev, "stopping recevier timeout!\n");
}