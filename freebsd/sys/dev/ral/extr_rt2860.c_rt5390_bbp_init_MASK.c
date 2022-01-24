#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct rt2860_softc {int nrxchains; int mac_ver; } ;
struct TYPE_3__ {int reg; int val; } ;

/* Variables and functions */
 int RT5390_MAC_IF_CTRL ; 
 int RT5390_MLD ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int,int) ; 
 TYPE_1__* rt5390_def_bbp ; 

__attribute__((used)) static void
FUNC3(struct rt2860_softc *sc)
{
	uint8_t bbp;
	int i;

	/* Apply maximum likelihood detection for 2 stream case. */
	if (sc->nrxchains > 1) {
		bbp = FUNC1(sc, 105);
		FUNC2(sc, 105, bbp | RT5390_MLD);
	}

	/* Avoid data lost and CRC error. */
	bbp = FUNC1(sc, 4);
	FUNC2(sc, 4, bbp | RT5390_MAC_IF_CTRL);

	for (i = 0; i < FUNC0(rt5390_def_bbp); i++) {
		FUNC2(sc, rt5390_def_bbp[i].reg,
		    rt5390_def_bbp[i].val);
	}

	if (sc->mac_ver == 0x5392) {
		FUNC2(sc, 84, 0x9a);
		FUNC2(sc, 95, 0x9a);
		FUNC2(sc, 98, 0x12);
		FUNC2(sc, 106, 0x05);
		FUNC2(sc, 134, 0xd0);
		FUNC2(sc, 135, 0xf6);
	}

	bbp = FUNC1(sc, 152);
	FUNC2(sc, 152, bbp | 0x80);

	/* Disable hardware antenna diversity. */
	if (sc->mac_ver == 0x5390)
		FUNC2(sc, 154, 0);
}