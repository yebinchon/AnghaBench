#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct hifn_softc {int sc_flags; int sc_rngfirst; int sc_rnghz; int sc_dmaier; TYPE_1__* sc_pkdev; int /*<<< orphan*/  sc_rngto; int /*<<< orphan*/  sc_dev; void* sc_harvest; scalar_t__ sc_rndtest; } ;
struct TYPE_2__ {struct hifn_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  HIFN_1_7811_RNGCFG ; 
 int /*<<< orphan*/  HIFN_1_7811_RNGENA ; 
 int /*<<< orphan*/  HIFN_1_DMA_IER ; 
 int /*<<< orphan*/  HIFN_1_PUB_IEN ; 
 int /*<<< orphan*/  HIFN_1_PUB_RESET ; 
 int /*<<< orphan*/  HIFN_1_RNG_CONFIG ; 
 int HIFN_7811_RNGCFG_DEFL ; 
 int HIFN_7811_RNGENA_ENA ; 
 int HIFN_DMAIER_PUBDONE ; 
 int HIFN_HAS_PUBLIC ; 
 int HIFN_HAS_RNG ; 
 int HIFN_IS_7811 ; 
 int HIFN_PUBIEN_DONE ; 
 int HIFN_PUBRST_RESET ; 
 int HIFN_RNGCFG_ENA ; 
 int FUNC1 (struct hifn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct hifn_softc*) ; 
 void* default_harvest ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hifn_rng ; 
 int hz ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 void* rndtest_harvest ; 
 int /*<<< orphan*/  vulcanpk_cdevsw ; 

__attribute__((used)) static int
FUNC8(struct hifn_softc *sc)
{
	u_int32_t r;
	int i;

#ifdef HIFN_RNDTEST
	sc->sc_rndtest = rndtest_attach(sc->sc_dev);
	if (sc->sc_rndtest)
		sc->sc_harvest = rndtest_harvest;
	else
		sc->sc_harvest = default_harvest;
#else
	sc->sc_harvest = default_harvest;
#endif
	if ((sc->sc_flags & HIFN_IS_7811) == 0) {
		/* Reset 7951 public key/rng engine */
		FUNC2(sc, HIFN_1_PUB_RESET,
		    FUNC1(sc, HIFN_1_PUB_RESET) | HIFN_PUBRST_RESET);

		for (i = 0; i < 100; i++) {
			FUNC0(1000);
			if ((FUNC1(sc, HIFN_1_PUB_RESET) &
			    HIFN_PUBRST_RESET) == 0)
				break;
		}

		if (i == 100) {
			FUNC5(sc->sc_dev, "public key init failed\n");
			return (1);
		}
	}

	/* Enable the rng, if available */
	if (sc->sc_flags & HIFN_HAS_RNG) {
		if (sc->sc_flags & HIFN_IS_7811) {
			r = FUNC1(sc, HIFN_1_7811_RNGENA);
			if (r & HIFN_7811_RNGENA_ENA) {
				r &= ~HIFN_7811_RNGENA_ENA;
				FUNC2(sc, HIFN_1_7811_RNGENA, r);
			}
			FUNC2(sc, HIFN_1_7811_RNGCFG,
			    HIFN_7811_RNGCFG_DEFL);
			r |= HIFN_7811_RNGENA_ENA;
			FUNC2(sc, HIFN_1_7811_RNGENA, r);
		} else
			FUNC2(sc, HIFN_1_RNG_CONFIG,
			    FUNC1(sc, HIFN_1_RNG_CONFIG) |
			    HIFN_RNGCFG_ENA);

		sc->sc_rngfirst = 1;
		if (hz >= 100)
			sc->sc_rnghz = hz / 100;
		else
			sc->sc_rnghz = 1;
		FUNC3(&sc->sc_rngto, 1);
		FUNC4(&sc->sc_rngto, sc->sc_rnghz, hifn_rng, sc);
	}

	/* Enable public key engine, if available */
	if (sc->sc_flags & HIFN_HAS_PUBLIC) {
		FUNC2(sc, HIFN_1_PUB_IEN, HIFN_PUBIEN_DONE);
		sc->sc_dmaier |= HIFN_DMAIER_PUBDONE;
		FUNC2(sc, HIFN_1_DMA_IER, sc->sc_dmaier);
#ifdef HIFN_VULCANDEV
		sc->sc_pkdev = make_dev(&vulcanpk_cdevsw, 0, 
					UID_ROOT, GID_WHEEL, 0666,
					"vulcanpk");
		sc->sc_pkdev->si_drv1 = sc;
#endif
	}

	return (0);
}