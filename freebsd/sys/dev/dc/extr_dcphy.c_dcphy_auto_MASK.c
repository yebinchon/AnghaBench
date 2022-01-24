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
struct mii_softc {int mii_capabilities; TYPE_1__* mii_pdata; } ;
struct dc_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mii_ifp; } ;

/* Variables and functions */
 int BMSR_100TXHDX ; 
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_10BTCTRL ; 
 int /*<<< orphan*/  DC_10BTSTAT ; 
 int /*<<< orphan*/  DC_ASTAT_TXDISABLE ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int /*<<< orphan*/  DC_NETCFG_FULLDUPLEX ; 
 int /*<<< orphan*/  DC_NETCFG_PORTSEL ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_SIARESET ; 
 int /*<<< orphan*/  DC_SIA_RESET ; 
 int /*<<< orphan*/  DC_TCTL_AUTONEGENBL ; 
 int EJUSTRETURN ; 
 struct dc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct mii_softc *mii)
{
	struct dc_softc		*sc;

	sc = FUNC3(mii->mii_pdata->mii_ifp);

	FUNC1(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
	FUNC2(sc, DC_NETCFG, DC_NETCFG_FULLDUPLEX);
	FUNC1(sc, DC_SIARESET, DC_SIA_RESET);
	if (mii->mii_capabilities & BMSR_100TXHDX)
		FUNC0(sc, DC_10BTCTRL, 0x3FFFF);
	else
		FUNC0(sc, DC_10BTCTRL, 0xFFFF);
	FUNC2(sc, DC_SIARESET, DC_SIA_RESET);
	FUNC2(sc, DC_10BTCTRL, DC_TCTL_AUTONEGENBL);
	FUNC2(sc, DC_10BTSTAT, DC_ASTAT_TXDISABLE);

	return (EJUSTRETURN);
}