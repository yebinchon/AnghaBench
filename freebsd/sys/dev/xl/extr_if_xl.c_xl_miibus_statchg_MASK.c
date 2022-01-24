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
typedef  int /*<<< orphan*/  uint8_t ;
struct xl_softc {scalar_t__ xl_type; int /*<<< orphan*/  xl_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media_active; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_FDX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XL_MACCTRL_DUPLEX ; 
 int /*<<< orphan*/  XL_MACCTRL_FLOW_CONTROL_ENB ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ XL_TYPE_905B ; 
 int /*<<< orphan*/  XL_W3_MAC_CTRL ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xl_softc*) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct xl_softc		*sc;
	struct mii_data		*mii;
	uint8_t			macctl;

	sc = FUNC4(dev);
	mii = FUNC4(sc->xl_miibus);

	FUNC5(sc);

	/* Set ASIC's duplex mode to match the PHY. */
	FUNC3(3);
	macctl = FUNC0(sc, XL_W3_MAC_CTRL);
	if ((FUNC2(mii->mii_media_active) & IFM_FDX) != 0) {
		macctl |= XL_MACCTRL_DUPLEX;
		if (sc->xl_type == XL_TYPE_905B) {
			if ((FUNC2(mii->mii_media_active) &
			    IFM_ETH_RXPAUSE) != 0)
				macctl |= XL_MACCTRL_FLOW_CONTROL_ENB;
			else
				macctl &= ~XL_MACCTRL_FLOW_CONTROL_ENB;
		}
	} else {
		macctl &= ~XL_MACCTRL_DUPLEX;
		if (sc->xl_type == XL_TYPE_905B)
			macctl &= ~XL_MACCTRL_FLOW_CONTROL_ENB;
	}
	FUNC1(sc, XL_W3_MAC_CTRL, macctl);
}