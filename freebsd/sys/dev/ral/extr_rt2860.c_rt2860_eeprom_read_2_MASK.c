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
struct rt2860_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int RT2860_C ; 
 int RT2860_D ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  RT2860_PCI_EECTRL ; 
 int RT2860_Q ; 
 int RT2860_S ; 
 int RT2860_SHIFT_D ; 
 int RT2860_SHIFT_Q ; 

__attribute__((used)) static uint16_t
FUNC2(struct rt2860_softc *sc, uint16_t addr)
{
	uint32_t tmp;
	uint16_t val;
	int n;

	/* clock C once before the first command */
	FUNC1(sc, 0);

	FUNC1(sc, RT2860_S);
	FUNC1(sc, RT2860_S | RT2860_C);
	FUNC1(sc, RT2860_S);

	/* write start bit (1) */
	FUNC1(sc, RT2860_S | RT2860_D);
	FUNC1(sc, RT2860_S | RT2860_D | RT2860_C);

	/* write READ opcode (10) */
	FUNC1(sc, RT2860_S | RT2860_D);
	FUNC1(sc, RT2860_S | RT2860_D | RT2860_C);
	FUNC1(sc, RT2860_S);
	FUNC1(sc, RT2860_S | RT2860_C);

	/* write address (A5-A0 or A7-A0) */
	n = ((FUNC0(sc, RT2860_PCI_EECTRL) & 0x30) == 0) ? 5 : 7;
	for (; n >= 0; n--) {
		FUNC1(sc, RT2860_S |
		    (((addr >> n) & 1) << RT2860_SHIFT_D));
		FUNC1(sc, RT2860_S |
		    (((addr >> n) & 1) << RT2860_SHIFT_D) | RT2860_C);
	}

	FUNC1(sc, RT2860_S);

	/* read data Q15-Q0 */
	val = 0;
	for (n = 15; n >= 0; n--) {
		FUNC1(sc, RT2860_S | RT2860_C);
		tmp = FUNC0(sc, RT2860_PCI_EECTRL);
		val |= ((tmp & RT2860_Q) >> RT2860_SHIFT_Q) << n;
		FUNC1(sc, RT2860_S);
	}

	FUNC1(sc, 0);

	/* clear Chip Select and clock C */
	FUNC1(sc, RT2860_S);
	FUNC1(sc, 0);
	FUNC1(sc, RT2860_C);

	return val;
}