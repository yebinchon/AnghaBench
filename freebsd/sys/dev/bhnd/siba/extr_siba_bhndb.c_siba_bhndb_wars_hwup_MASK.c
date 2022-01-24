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
struct siba_bhndb_softc {int quirks; } ;

/* Variables and functions */
 int SIBA_QUIRK_PCIE_D11_SB_TIMEOUT ; 
 int FUNC0 (struct siba_bhndb_softc*) ; 

__attribute__((used)) static int
FUNC1(struct siba_bhndb_softc *sc)
{
	int error;

	if (sc->quirks & SIBA_QUIRK_PCIE_D11_SB_TIMEOUT) {
		if ((error = FUNC0(sc)))
			return (error);
	}

	return (0);
}