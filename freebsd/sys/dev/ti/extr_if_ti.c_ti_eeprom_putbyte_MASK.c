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
struct ti_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ti_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_MISC_LOCAL_CTL ; 
 int /*<<< orphan*/  TI_MLC_EE_CLK ; 
 int TI_MLC_EE_DIN ; 
 int /*<<< orphan*/  TI_MLC_EE_DOUT ; 
 int /*<<< orphan*/  TI_MLC_EE_TXEN ; 
 int /*<<< orphan*/  FUNC3 (struct ti_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC4(struct ti_softc *sc, int byte)
{
	int i, ack = 0;

	/*
	 * Make sure we're in TX mode.
	 */
	FUNC3(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_TXEN);

	/*
	 * Feed in each bit and stobe the clock.
	 */
	for (i = 0x80; i; i >>= 1) {
		if (byte & i) {
			FUNC3(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_DOUT);
		} else {
			FUNC2(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_DOUT);
		}
		FUNC1(1);
		FUNC3(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);
		FUNC1(1);
		FUNC2(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);
	}

	/*
	 * Turn off TX mode.
	 */
	FUNC2(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_TXEN);

	/*
	 * Check for ack.
	 */
	FUNC3(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);
	ack = FUNC0(sc, TI_MISC_LOCAL_CTL) & TI_MLC_EE_DIN;
	FUNC2(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);

	return (ack);
}