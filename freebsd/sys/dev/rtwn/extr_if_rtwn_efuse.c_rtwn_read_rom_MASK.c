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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtwn_softc {int /*<<< orphan*/  efuse_maplen; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ *) ; 

int
FUNC6(struct rtwn_softc *sc)
{
	uint8_t *rom;
	int error;

	rom = FUNC3(sc->efuse_maplen, M_TEMP, M_WAITOK);

	/* Read full ROM image. */
	FUNC0(sc);
	error = FUNC4(sc, rom, sc->efuse_maplen);
	FUNC1(sc);
	if (error != 0)
		goto fail;

	/* Parse & save data in softc. */
	FUNC5(sc, rom);

fail:
	FUNC2(rom, M_TEMP);

	return (error);
}