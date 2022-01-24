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
struct mtkswitch_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int MTKSWITCH_DUPLEX ; 
 int MTKSWITCH_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTKSWITCH_POA ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int MTKSWITCH_RXFLOW ; 
 int MTKSWITCH_SPEED_10 ; 
 int MTKSWITCH_SPEED_100 ; 
 int MTKSWITCH_SPEED_1000 ; 
 int MTKSWITCH_TXFLOW ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
#define  POA_GE_SPEED_10 130 
#define  POA_GE_SPEED_100 129 
#define  POA_GE_SPEED_1000 128 
 int FUNC6 (int,int) ; 
 int POA_GE_XFC_RX_MSK ; 
 int POA_GE_XFC_TX_MSK ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static uint32_t
FUNC9(struct mtkswitch_softc *sc, int port)
{
	uint32_t val, res;

	FUNC0(sc, MA_OWNED);
	res = 0;
	val = FUNC2(sc, MTKSWITCH_POA);

	if (val & FUNC8(port))
		res |= MTKSWITCH_LINK_UP;
	if (val & FUNC7(port))
		res |= MTKSWITCH_DUPLEX;

	if (FUNC1(port)) {
		if (val & FUNC3(port))
			res |= MTKSWITCH_SPEED_100;
		if (val & FUNC4(port))
			res |= (MTKSWITCH_TXFLOW | MTKSWITCH_RXFLOW);
	} else {
		switch (FUNC5(val, port)) {
		case POA_GE_SPEED_10:
			res |= MTKSWITCH_SPEED_10;
			break;
		case POA_GE_SPEED_100:
			res |= MTKSWITCH_SPEED_100;
			break;
		case POA_GE_SPEED_1000:
			res |= MTKSWITCH_SPEED_1000;
			break;
		}

		val = FUNC6(val, port);
		if (val & POA_GE_XFC_TX_MSK)
			res |= MTKSWITCH_TXFLOW;
		if (val & POA_GE_XFC_RX_MSK)
			res |= MTKSWITCH_RXFLOW;
	}

	return (res);
}