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
typedef  int u_int32_t ;
struct xl_softc {int xl_media; } ;

/* Variables and functions */
 int FUNC0 (struct xl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XL_CMD_COAX_STOP ; 
 int /*<<< orphan*/  XL_COMMAND ; 
 int XL_ICFG_CONNECTOR_BITS ; 
 int XL_ICFG_CONNECTOR_MASK ; 
 int XL_MEDIAOPT_BT4 ; 
 int XL_MEDIAOPT_BTX ; 
 int XL_MEDIAOPT_MII ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  XL_W3_INTERNAL_CFG ; 
 int XL_XCVR_AUTO ; 
 int XL_XCVR_MII ; 

__attribute__((used)) static void
FUNC4(struct xl_softc *sc)
{
	u_int32_t		icfg;

	/*XL_LOCK_ASSERT(sc);*/

	FUNC3(3);
	icfg = FUNC0(sc, XL_W3_INTERNAL_CFG);
	icfg &= ~XL_ICFG_CONNECTOR_MASK;
	if (sc->xl_media & XL_MEDIAOPT_MII ||
		sc->xl_media & XL_MEDIAOPT_BT4)
		icfg |= (XL_XCVR_MII << XL_ICFG_CONNECTOR_BITS);
	if (sc->xl_media & XL_MEDIAOPT_BTX)
		icfg |= (XL_XCVR_AUTO << XL_ICFG_CONNECTOR_BITS);

	FUNC2(sc, XL_W3_INTERNAL_CFG, icfg);
	FUNC1(sc, XL_COMMAND, XL_CMD_COAX_STOP);
}