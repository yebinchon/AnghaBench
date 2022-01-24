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
typedef  int uint16_t ;
struct scc_bas {int dummy; } ;
struct scc_softc {struct scc_bas sc_bas; } ;
struct scc_chan {int ch_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct scc_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scc_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct scc_softc *sc, struct scc_chan *ch)
{
	struct scc_bas *bas;
	int unit;
	uint16_t val0, val1;

	bas = &sc->sc_bas;
	unit = ch->ch_nr - 1;
	val0 = FUNC1(bas, FUNC0(unit));
	FUNC2(bas, FUNC0(unit), ~val0);
	val1 = FUNC1(bas, FUNC0(unit));
	FUNC2(bas, FUNC0(unit), val0);
	return (((val0 | val1) == 0x8000) ? 1 : 0);
}