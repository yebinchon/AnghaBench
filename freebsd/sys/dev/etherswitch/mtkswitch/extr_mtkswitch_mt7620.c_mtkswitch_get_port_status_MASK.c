#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int /*<<< orphan*/ ) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int MTKSWITCH_DUPLEX ; 
 int MTKSWITCH_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MTKSWITCH_RXFLOW ; 
 int MTKSWITCH_SPEED_10 ; 
 int MTKSWITCH_SPEED_100 ; 
 int MTKSWITCH_SPEED_1000 ; 
 int MTKSWITCH_TXFLOW ; 
 int PMSR_MAC_DPX_STS ; 
 int PMSR_MAC_LINK_STS ; 
 int FUNC2 (int) ; 
 int PMSR_RX_FC_STS ; 
 int PMSR_TX_FC_STS ; 
 int FUNC3 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC4(struct mtkswitch_softc *sc, int port)
{
	uint32_t val, res, tmp;

	FUNC0(sc, MA_OWNED);
	res = 0;
	val = sc->hal.mtkswitch_read(sc, FUNC1(port));

	if (val & PMSR_MAC_LINK_STS)
		res |= MTKSWITCH_LINK_UP;
	if (val & PMSR_MAC_DPX_STS)
		res |= MTKSWITCH_DUPLEX;
	tmp = FUNC2(val);
	if (tmp == 0)
		res |= MTKSWITCH_SPEED_10;
	else if (tmp == 1)
		res |= MTKSWITCH_SPEED_100;
	else if (tmp == 2)
		res |= MTKSWITCH_SPEED_1000;
	if (val & PMSR_TX_FC_STS)
		res |= MTKSWITCH_TXFLOW;
	if (val & PMSR_RX_FC_STS)
		res |= MTKSWITCH_RXFLOW;

	return (res);
}