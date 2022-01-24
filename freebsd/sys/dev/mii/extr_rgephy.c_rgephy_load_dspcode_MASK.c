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
struct mii_softc {scalar_t__ mii_mpd_model; scalar_t__ mii_mpd_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MII_MODEL_REALTEK_RTL8251 ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int,int) ; 
 int FUNC2 (struct mii_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*,int,int) ; 
 scalar_t__ RGEPHY_8211B ; 

__attribute__((used)) static void
FUNC5(struct mii_softc *sc)
{
	int val;

	if (sc->mii_mpd_model == MII_MODEL_REALTEK_RTL8251 ||
	    sc->mii_mpd_rev >= RGEPHY_8211B)
		return;

	FUNC4(sc, 31, 0x0001);
	FUNC4(sc, 21, 0x1000);
	FUNC4(sc, 24, 0x65C7);
	FUNC1(sc, 4, 0x0800);
	val = FUNC2(sc, 4) & 0xFFF;
	FUNC4(sc, 4, val);
	FUNC4(sc, 3, 0x00A1);
	FUNC4(sc, 2, 0x0008);
	FUNC4(sc, 1, 0x1020);
	FUNC4(sc, 0, 0x1000);
	FUNC3(sc, 4, 0x0800);
	FUNC1(sc, 4, 0x0800);
	val = (FUNC2(sc, 4) & 0xFFF) | 0x7000;
	FUNC4(sc, 4, val);
	FUNC4(sc, 3, 0xFF41);
	FUNC4(sc, 2, 0xDE60);
	FUNC4(sc, 1, 0x0140);
	FUNC4(sc, 0, 0x0077);
	val = (FUNC2(sc, 4) & 0xFFF) | 0xA000;
	FUNC4(sc, 4, val);
	FUNC4(sc, 3, 0xDF01);
	FUNC4(sc, 2, 0xDF20);
	FUNC4(sc, 1, 0xFF95);
	FUNC4(sc, 0, 0xFA00);
	val = (FUNC2(sc, 4) & 0xFFF) | 0xB000;
	FUNC4(sc, 4, val);
	FUNC4(sc, 3, 0xFF41);
	FUNC4(sc, 2, 0xDE20);
	FUNC4(sc, 1, 0x0140);
	FUNC4(sc, 0, 0x00BB);
	val = (FUNC2(sc, 4) & 0xFFF) | 0xF000;
	FUNC4(sc, 4, val);
	FUNC4(sc, 3, 0xDF01);
	FUNC4(sc, 2, 0xDF20);
	FUNC4(sc, 1, 0xFF95);
	FUNC4(sc, 0, 0xBF00);
	FUNC3(sc, 4, 0x0800);
	FUNC1(sc, 4, 0x0800);
	FUNC4(sc, 31, 0x0000);

	FUNC0(40);
}