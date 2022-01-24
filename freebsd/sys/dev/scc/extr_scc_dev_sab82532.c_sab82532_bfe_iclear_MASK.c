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
struct scc_bas {int dummy; } ;
struct scc_softc {int /*<<< orphan*/  sc_hwmtx; struct scc_bas sc_bas; } ;
struct scc_chan {int ch_nr; int ch_ipend; } ;

/* Variables and functions */
 int SAB_CHANLEN ; 
 scalar_t__ SAB_CMDR ; 
 int /*<<< orphan*/  SAB_CMDR_RMC ; 
 scalar_t__ SAB_RBCL ; 
 scalar_t__ SAB_RFIFO ; 
 scalar_t__ SAB_STAR ; 
 int SAB_STAR_CEC ; 
 int SAB_STAR_RFNE ; 
 int SER_INT_RXREADY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scc_bas*) ; 
 int FUNC3 (struct scc_bas*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_bas*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct scc_softc *sc, struct scc_chan *ch)
{
	struct scc_bas *bas;
	int i, ofs, rbcl;

	bas = &sc->sc_bas;
	ofs = (ch->ch_nr - 1) * SAB_CHANLEN;
	FUNC0(&sc->sc_hwmtx);
	if (ch->ch_ipend & SER_INT_RXREADY) {
		if (FUNC3(bas, ofs + SAB_STAR) & SAB_STAR_RFNE) {
			rbcl = FUNC3(bas, ofs + SAB_RBCL) & 31;
			if (rbcl == 0)
				rbcl = 32;
			for (i = 0; i < rbcl; i += 2) {
				(void)FUNC3(bas, ofs + SAB_RFIFO);
				(void)FUNC3(bas, ofs + SAB_RFIFO + 1);
			}
		}
		while (FUNC3(bas, ofs + SAB_STAR) & SAB_STAR_CEC)
			;
		FUNC4(bas, ofs + SAB_CMDR, SAB_CMDR_RMC);
		FUNC2(bas);
	}
	FUNC1(&sc->sc_hwmtx);
	return (0);
}