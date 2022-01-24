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
typedef  size_t uint8_t ;
struct ath_softc {int* sc_rixmap; } ;

/* Variables and functions */

int
FUNC0(const struct ath_softc *sc, uint8_t rate)
{
	int rix = sc->sc_rixmap[rate];
	/* NB: return lowest rix for invalid rate */
	return (rix == 0xff ? 0 : rix);
}