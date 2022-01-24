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
typedef  int u_int32_t ;
struct hifn_softc {int sc_flags; int /*<<< orphan*/  sc_rnghz; int /*<<< orphan*/  sc_rngto; int /*<<< orphan*/  sc_rndtest; int /*<<< orphan*/  (* sc_harvest ) (int /*<<< orphan*/ ,int*,int) ;scalar_t__ sc_rngfirst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  num ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_1_7811_RNGDAT ; 
 int /*<<< orphan*/  HIFN_1_7811_RNGSTS ; 
 int /*<<< orphan*/  HIFN_1_RNG_DATA ; 
 int HIFN_7811_RNGSTS_RDY ; 
 int HIFN_7811_RNGSTS_UFL ; 
 int HIFN_IS_7811 ; 
 int FUNC0 (struct hifn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC5(void *vsc)
{
#define	RANDOM_BITS(n)	(n)*sizeof (u_int32_t), (n)*sizeof (u_int32_t)*NBBY, 0
	struct hifn_softc *sc = vsc;
	u_int32_t sts, num[2];
	int i;

	if (sc->sc_flags & HIFN_IS_7811) {
		/* ONLY VALID ON 7811!!!! */
		for (i = 0; i < 5; i++) {
			sts = FUNC0(sc, HIFN_1_7811_RNGSTS);
			if (sts & HIFN_7811_RNGSTS_UFL) {
				FUNC2(sc->sc_dev,
					      "RNG underflow: disabling\n");
				return;
			}
			if ((sts & HIFN_7811_RNGSTS_RDY) == 0)
				break;

			/*
			 * There are at least two words in the RNG FIFO
			 * at this point.
			 */
			num[0] = FUNC0(sc, HIFN_1_7811_RNGDAT);
			num[1] = FUNC0(sc, HIFN_1_7811_RNGDAT);
			/* NB: discard first data read */
			if (sc->sc_rngfirst)
				sc->sc_rngfirst = 0;
			else
				(*sc->sc_harvest)(sc->sc_rndtest,
					num, sizeof (num));
		}
	} else {
		num[0] = FUNC0(sc, HIFN_1_RNG_DATA);

		/* NB: discard first data read */
		if (sc->sc_rngfirst)
			sc->sc_rngfirst = 0;
		else
			(*sc->sc_harvest)(sc->sc_rndtest,
				num, sizeof (num[0]));
	}

	FUNC1(&sc->sc_rngto, sc->sc_rnghz, hifn_rng, sc);
#undef RANDOM_BITS
}