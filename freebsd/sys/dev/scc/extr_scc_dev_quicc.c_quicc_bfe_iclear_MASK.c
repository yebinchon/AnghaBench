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
struct scc_softc {int /*<<< orphan*/  sc_hwmtx; struct scc_bas sc_bas; } ;
struct scc_chan {int ch_ipend; scalar_t__ ch_nr; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int SER_INT_RXREADY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct scc_bas*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_bas*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scc_bas*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct scc_softc *sc, struct scc_chan *ch)
{
	struct scc_bas *bas;
	uint16_t rb, st;

	bas = &sc->sc_bas;
	FUNC1(&sc->sc_hwmtx);
	if (ch->ch_ipend & SER_INT_RXREADY) {
		rb = FUNC3(bas, FUNC0(ch->ch_nr - 1));
		st = FUNC3(bas, rb);
		(void)FUNC4(bas, rb + 4);
		FUNC5(bas, rb, st | 0x9000);
	}
	FUNC2(&sc->sc_hwmtx);
	return (0);
}