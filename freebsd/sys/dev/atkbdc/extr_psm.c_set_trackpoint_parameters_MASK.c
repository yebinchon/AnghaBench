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
struct TYPE_2__ {int sensitivity; int uplateau; int inertia; int reach; int draghys; int mindrag; int upthresh; int threshold; int jenks; int ztime; int pts; int skipback; } ;
struct psm_softc {TYPE_1__ tpinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct psm_softc*,int,int,int) ; 

__attribute__((used)) static void
FUNC1(struct psm_softc *sc)
{
	FUNC0(sc, 0x81, 0x4a, sc->tpinfo.sensitivity);
	FUNC0(sc, 0x81, 0x60, sc->tpinfo.uplateau);
	FUNC0(sc, 0x81, 0x4d, sc->tpinfo.inertia);
	FUNC0(sc, 0x81, 0x57, sc->tpinfo.reach);
	FUNC0(sc, 0x81, 0x58, sc->tpinfo.draghys);
	FUNC0(sc, 0x81, 0x59, sc->tpinfo.mindrag);
	FUNC0(sc, 0x81, 0x5a, sc->tpinfo.upthresh);
	FUNC0(sc, 0x81, 0x5c, sc->tpinfo.threshold);
	FUNC0(sc, 0x81, 0x5d, sc->tpinfo.jenks);
	FUNC0(sc, 0x81, 0x5e, sc->tpinfo.ztime);
	if (sc->tpinfo.pts == 0x01)
		FUNC0(sc, 0x47, 0x2c, 0x01);
	if (sc->tpinfo.skipback == 0x01)
		FUNC0(sc, 0x47, 0x2d, 0x08);
}