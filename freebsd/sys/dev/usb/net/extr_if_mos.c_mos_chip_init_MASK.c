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
struct mos_softc {int* mos_phyaddrs; } ;

/* Variables and functions */
 int MOS_PAUSE_REWRITES ; 
 int /*<<< orphan*/  MOS_PAUSE_TRHD ; 
 int FUNC0 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mos_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mos_softc *sc)
{
	int i;

	/*
	 * Rev.C devices have a pause threshold register which needs to be set
	 * at startup.
	 */
	if (FUNC0(sc, MOS_PAUSE_TRHD) != -1) {
		for (i = 0; i < MOS_PAUSE_REWRITES; i++)
			FUNC1(sc, MOS_PAUSE_TRHD, 0);
	}
	sc->mos_phyaddrs[0] = 1;
	sc->mos_phyaddrs[1] = 0xFF;
}