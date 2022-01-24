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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_intr {int n_alloc; scalar_t__ state; } ;
struct sfxge_softc {int evq_count; int /*<<< orphan*/ * evqs_stats_node; struct sysctl_oid* stats_node; int /*<<< orphan*/  dev; int /*<<< orphan*/  ev_moderation; struct sfxge_intr intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 scalar_t__ SFXGE_INTR_INITIALIZED ; 
 int /*<<< orphan*/  SFXGE_MODERATION ; 
 int /*<<< orphan*/ * FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_softc*,int) ; 
 int FUNC7 (struct sfxge_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  sfxge_int_mod_handler ; 

int
FUNC9(struct sfxge_softc *sc)
{
	struct sysctl_ctx_list *sysctl_ctx = FUNC4(sc->dev);
	struct sysctl_oid *sysctl_tree = FUNC5(sc->dev);
	struct sfxge_intr *intr;
	int index;
	int rc;

	intr = &sc->intr;

	sc->evq_count = intr->n_alloc;

	FUNC0(intr->state == SFXGE_INTR_INITIALIZED,
	    ("intr->state != SFXGE_INTR_INITIALIZED"));

	/* Set default interrupt moderation; add a sysctl to
	 * read and change it.
	 */
	sc->ev_moderation = SFXGE_MODERATION;
	FUNC2(sysctl_ctx, FUNC3(sysctl_tree),
			OID_AUTO, "int_mod", CTLTYPE_UINT|CTLFLAG_RW,
			sc, 0, sfxge_int_mod_handler, "IU",
			"sfxge interrupt moderation (us)");

#if EFSYS_OPT_QSTATS
	sc->evqs_stats_node = SYSCTL_ADD_NODE(
		device_get_sysctl_ctx(sc->dev), SYSCTL_CHILDREN(sc->stats_node),
		OID_AUTO, "evq", CTLFLAG_RD, NULL, "Event queues stats");
	if (sc->evqs_stats_node == NULL) {
		rc = ENOMEM;
		goto fail_evqs_stats_node;
	}
#endif

	/*
	 * Initialize the event queue(s) - one per interrupt.
	 */
	for (index = 0; index < sc->evq_count; index++) {
		if ((rc = FUNC7(sc, index)) != 0)
			goto fail;
	}

#if EFSYS_OPT_QSTATS
	sfxge_ev_stat_init(sc);
#endif

	return (0);

fail:
	while (--index >= 0)
		FUNC6(sc, index);

#if EFSYS_OPT_QSTATS
fail_evqs_stats_node:
#endif
	sc->evq_count = 0;
	return (rc);
}