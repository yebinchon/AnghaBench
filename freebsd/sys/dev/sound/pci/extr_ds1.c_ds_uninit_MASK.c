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
struct sc_info {int /*<<< orphan*/  map; int /*<<< orphan*/  regbase; int /*<<< orphan*/  control_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_EFFCTRLBASE ; 
 int /*<<< orphan*/  YDSXGR_GLOBALCTRL ; 
 int /*<<< orphan*/  YDSXGR_MAPOFEFFECT ; 
 int /*<<< orphan*/  YDSXGR_MAPOFREC ; 
 int /*<<< orphan*/  YDSXGR_MODE ; 
 int /*<<< orphan*/  YDSXGR_NATIVEADCINVOL ; 
 int /*<<< orphan*/  YDSXGR_NATIVEDACINVOL ; 
 int /*<<< orphan*/  YDSXGR_NATIVEDACOUTVOL ; 
 int /*<<< orphan*/  YDSXGR_PLAYCTRLBASE ; 
 int /*<<< orphan*/  YDSXGR_RECCTRLBASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(struct sc_info *sc)
{
	FUNC3(sc, YDSXGR_NATIVEDACOUTVOL, 0x00000000, 4);
	FUNC3(sc, YDSXGR_NATIVEADCINVOL, 0, 4);
	FUNC3(sc, YDSXGR_NATIVEDACINVOL, 0, 4);
	FUNC2(sc, 0);
	FUNC3(sc, YDSXGR_MODE, 0x00010000, 4);
	FUNC3(sc, YDSXGR_MAPOFREC, 0x00000000, 4);
	FUNC3(sc, YDSXGR_MAPOFEFFECT, 0x00000000, 4);
	FUNC3(sc, YDSXGR_PLAYCTRLBASE, 0x00000000, 4);
	FUNC3(sc, YDSXGR_RECCTRLBASE, 0x00000000, 4);
	FUNC3(sc, YDSXGR_EFFCTRLBASE, 0x00000000, 4);
	FUNC3(sc, YDSXGR_GLOBALCTRL, 0, 2);

	FUNC0(sc->control_dmat, sc->map);
	FUNC1(sc->control_dmat, sc->regbase, sc->map);

	return 0;
}