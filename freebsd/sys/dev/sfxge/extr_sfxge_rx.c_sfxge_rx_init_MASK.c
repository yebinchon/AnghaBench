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
struct sfxge_intr {int n_alloc; scalar_t__ state; } ;
struct sfxge_softc {int rxq_count; struct sfxge_intr intr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ SFXGE_INTR_INITIALIZED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int lro_idle_ticks ; 
 int /*<<< orphan*/  lro_table_size ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_softc*,int) ; 
 int FUNC5 (struct sfxge_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  table_size ; 

int
FUNC7(struct sfxge_softc *sc)
{
	struct sfxge_intr *intr;
	int index;
	int rc;

#ifdef SFXGE_LRO
	if (!ISP2(lro_table_size)) {
		log(LOG_ERR, "%s=%u must be power of 2",
		    SFXGE_LRO_PARAM(table_size), lro_table_size);
		rc = EINVAL;
		goto fail_lro_table_size;
	}

	if (lro_idle_ticks == 0)
		lro_idle_ticks = hz / 10 + 1; /* 100 ms */
#endif

	intr = &sc->intr;

	sc->rxq_count = intr->n_alloc;

	FUNC1(intr->state == SFXGE_INTR_INITIALIZED,
	    ("intr->state != SFXGE_INTR_INITIALIZED"));

	/* Initialize the receive queue(s) - one per interrupt. */
	for (index = 0; index < sc->rxq_count; index++) {
		if ((rc = FUNC5(sc, index)) != 0)
			goto fail;
	}

	FUNC6(sc);

	return (0);

fail:
	/* Tear down the receive queue(s). */
	while (--index >= 0)
		FUNC4(sc, index);

	sc->rxq_count = 0;

#ifdef SFXGE_LRO
fail_lro_table_size:
#endif
	return (rc);
}