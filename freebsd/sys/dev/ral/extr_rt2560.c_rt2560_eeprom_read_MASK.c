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
typedef  int uint16_t ;
struct rt2560_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int RT2560_93C46 ; 
 int RT2560_C ; 
 int /*<<< orphan*/  RT2560_CSR21 ; 
 int RT2560_D ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*,int) ; 
 int RT2560_Q ; 
 int RT2560_S ; 
 int RT2560_SHIFT_D ; 
 int RT2560_SHIFT_Q ; 

__attribute__((used)) static uint16_t
FUNC2(struct rt2560_softc *sc, uint8_t addr)
{
	uint32_t tmp;
	uint16_t val;
	int n;

	/* clock C once before the first command */
	FUNC1(sc, 0);

	FUNC1(sc, RT2560_S);
	FUNC1(sc, RT2560_S | RT2560_C);
	FUNC1(sc, RT2560_S);

	/* write start bit (1) */
	FUNC1(sc, RT2560_S | RT2560_D);
	FUNC1(sc, RT2560_S | RT2560_D | RT2560_C);

	/* write READ opcode (10) */
	FUNC1(sc, RT2560_S | RT2560_D);
	FUNC1(sc, RT2560_S | RT2560_D | RT2560_C);
	FUNC1(sc, RT2560_S);
	FUNC1(sc, RT2560_S | RT2560_C);

	/* write address (A5-A0 or A7-A0) */
	n = (FUNC0(sc, RT2560_CSR21) & RT2560_93C46) ? 5 : 7;
	for (; n >= 0; n--) {
		FUNC1(sc, RT2560_S |
		    (((addr >> n) & 1) << RT2560_SHIFT_D));
		FUNC1(sc, RT2560_S |
		    (((addr >> n) & 1) << RT2560_SHIFT_D) | RT2560_C);
	}

	FUNC1(sc, RT2560_S);

	/* read data Q15-Q0 */
	val = 0;
	for (n = 15; n >= 0; n--) {
		FUNC1(sc, RT2560_S | RT2560_C);
		tmp = FUNC0(sc, RT2560_CSR21);
		val |= ((tmp & RT2560_Q) >> RT2560_SHIFT_Q) << n;
		FUNC1(sc, RT2560_S);
	}

	FUNC1(sc, 0);

	/* clear Chip Select and clock C */
	FUNC1(sc, RT2560_S);
	FUNC1(sc, 0);
	FUNC1(sc, RT2560_C);

	return val;
}