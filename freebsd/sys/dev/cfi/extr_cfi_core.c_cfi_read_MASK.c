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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_int ;
struct cfi_softc {int sc_width; int /*<<< orphan*/  sc_handle; int /*<<< orphan*/  sc_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

uint32_t
FUNC5(struct cfi_softc *sc, u_int ofs)
{
	uint32_t val;
	uint16_t sval;

	ofs &= ~(sc->sc_width - 1);
	switch (sc->sc_width) {
	case 1:
		val = FUNC0(sc->sc_tag, sc->sc_handle, ofs);
		break;
	case 2:
		sval = FUNC1(sc->sc_tag, sc->sc_handle, ofs);
#ifdef CFI_HARDWAREBYTESWAP
		val = sval;
#else
		val = FUNC3(sval);
#endif
		break;
	case 4:
		val = FUNC2(sc->sc_tag, sc->sc_handle, ofs);
#ifndef CFI_HARDWAREBYTESWAP
		val = FUNC4(val);
#endif
		break;
	default:
		val = ~0;
		break;
	}
	return (val);
}