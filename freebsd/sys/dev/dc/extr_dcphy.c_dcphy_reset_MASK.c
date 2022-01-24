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
struct mii_softc {TYPE_1__* mii_pdata; } ;
struct dc_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mii_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_SIARESET ; 
 int /*<<< orphan*/  DC_SIA_RESET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct dc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct mii_softc *mii)
{
	struct dc_softc		*sc;

	sc = FUNC3(mii->mii_pdata->mii_ifp);

	FUNC0(sc, DC_SIARESET, DC_SIA_RESET);
	FUNC2(1000);
	FUNC1(sc, DC_SIARESET, DC_SIA_RESET);
}