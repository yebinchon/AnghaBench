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
struct zyd_softc {scalar_t__ sc_macrev; } ;
struct zyd_rf {struct zyd_softc* rf_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZYD_CR11 ; 
 int /*<<< orphan*/  ZYD_CR251 ; 
 scalar_t__ ZYD_ZD1211B ; 
 int FUNC0 (struct zyd_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zyd_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct zyd_rf *rf, int on)
{
	int error;
	struct zyd_softc *sc = rf->rf_sc;

	error = FUNC0(sc, on ? 0x25f94 : 0x25f90);
	if (error != 0)
		return (error);

	FUNC1(sc, ZYD_CR11, on ? 0x00 : 0x04);
	FUNC1(sc, ZYD_CR251,
	    on ? ((sc->sc_macrev == ZYD_ZD1211B) ? 0x7f : 0x3f) : 0x2f);
fail:
	return (error);
}