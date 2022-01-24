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
struct rt2860_softc {int mac_ver; } ;

/* Variables and functions */
 int FUNC0 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2860_C ; 
 int /*<<< orphan*/  RT2860_GPIO_CTRL ; 
 int /*<<< orphan*/  RT2860_PCI_EECTRL ; 
 int FUNC2 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct rt2860_softc *sc, int aux)
{
	uint32_t tmp;

	if (aux) {
		if (sc->mac_ver == 0x5390) {
			FUNC3(sc, 152, 
			    FUNC2(sc, 152) & ~0x80);
		} else {
			tmp = FUNC0(sc, RT2860_PCI_EECTRL);
			FUNC1(sc, RT2860_PCI_EECTRL, tmp & ~RT2860_C);
			tmp = FUNC0(sc, RT2860_GPIO_CTRL);
			FUNC1(sc, RT2860_GPIO_CTRL, (tmp & ~0x0808) | 0x08);
		}
	} else {
		if (sc->mac_ver == 0x5390) {
			FUNC3(sc, 152, 
			    FUNC2(sc, 152) | 0x80);
		} else {
			tmp = FUNC0(sc, RT2860_PCI_EECTRL);
			FUNC1(sc, RT2860_PCI_EECTRL, tmp | RT2860_C);
			tmp = FUNC0(sc, RT2860_GPIO_CTRL);
			FUNC1(sc, RT2860_GPIO_CTRL, tmp & ~0x0808);
		}
	}
}