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
struct nge_softc {int dummy; } ;

/* Variables and functions */
 int NGE_EECMD_READ ; 
 int /*<<< orphan*/  NGE_MEAR_EE_CLK ; 
 int /*<<< orphan*/  NGE_MEAR_EE_DIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nge_softc*) ; 

__attribute__((used)) static void
FUNC3(struct nge_softc *sc, int addr)
{
	int d, i;

	d = addr | NGE_EECMD_READ;

	/*
	 * Feed in each bit and stobe the clock.
	 */
	for (i = 0x400; i; i >>= 1) {
		if (d & i) {
			FUNC1(NGE_MEAR_EE_DIN);
		} else {
			FUNC0(NGE_MEAR_EE_DIN);
		}
		FUNC2(sc);
		FUNC1(NGE_MEAR_EE_CLK);
		FUNC2(sc);
		FUNC0(NGE_MEAR_EE_CLK);
		FUNC2(sc);
	}
}