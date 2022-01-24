#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct sfxge_softc {unsigned int max_rss_channels; unsigned int evq_max; int /*<<< orphan*/  dev; int /*<<< orphan*/  enp; } ;
typedef  int /*<<< orphan*/  limits ;
struct TYPE_4__ {int edl_min_evq_count; unsigned int edl_max_evq_count; int edl_min_txq_count; unsigned int edl_max_txq_count; int edl_min_rxq_count; unsigned int edl_max_rxq_count; } ;
typedef  TYPE_1__ efx_drv_limits_t ;

/* Variables and functions */
 unsigned int EFX_MAXRSS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (unsigned int,int) ; 
 void* FUNC2 (int,unsigned int) ; 
 int FUNC3 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*,int*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int mp_ncpus ; 
 unsigned int FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct sfxge_softc *sc)
{
	efx_drv_limits_t limits;
	int rc;
	unsigned int evq_max;
	uint32_t evq_allocated;
	uint32_t rxq_allocated;
	uint32_t txq_allocated;

	/*
	 * Limit the number of event queues to:
	 *  - number of CPUs
	 *  - hardwire maximum RSS channels
	 *  - administratively specified maximum RSS channels
	 */
#ifdef RSS
	/*
	 * Avoid extra limitations so that the number of queues
	 * may be configured at administrator's will
	 */
	evq_max = MIN(MAX(rss_getnumbuckets(), 1), EFX_MAXRSS);
#else
	evq_max = FUNC2(mp_ncpus, EFX_MAXRSS);
#endif
	if (sc->max_rss_channels > 0)
		evq_max = FUNC2(evq_max, sc->max_rss_channels);

	FUNC9(&limits, 0, sizeof(limits));

	limits.edl_min_evq_count = 1;
	limits.edl_max_evq_count = evq_max;
	limits.edl_min_txq_count = FUNC3(sc);
	limits.edl_max_txq_count = evq_max + FUNC3(sc) - 1;
	limits.edl_min_rxq_count = 1;
	limits.edl_max_rxq_count = evq_max;

	FUNC8(sc->enp, &limits);

	if ((rc = FUNC7(sc->enp)) != 0)
		return (rc);

	rc = FUNC6(sc->enp, &evq_allocated, &rxq_allocated,
				 &txq_allocated);
	if (rc != 0) {
		FUNC5(sc->enp);
		return (rc);
	}

	FUNC0(txq_allocated >= FUNC3(sc),
		("txq_allocated < %u", FUNC3(sc)));

	sc->evq_max = FUNC2(evq_allocated, evq_max);
	sc->evq_max = FUNC2(rxq_allocated, sc->evq_max);
	sc->evq_max = FUNC2(txq_allocated - (FUNC3(sc) - 1),
			  sc->evq_max);

	FUNC0(sc->evq_max <= evq_max,
		("allocated more than maximum requested"));

#ifdef RSS
	if (sc->evq_max < rss_getnumbuckets())
		device_printf(sc->dev, "The number of allocated queues (%u) "
			      "is less than the number of RSS buckets (%u); "
			      "performance degradation might be observed",
			      sc->evq_max, rss_getnumbuckets());
#endif

	/*
	 * NIC is kept initialized in the case of success to be able to
	 * initialize port to find out media types.
	 */
	return (0);
}