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
struct sfxge_softc {int /*<<< orphan*/  enp; struct sysctl_oid* evqs_stats_node; int /*<<< orphan*/  dev; } ;
struct sfxge_evq {int index; struct sfxge_softc* sc; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_U64 ; 
 int ENOMEM ; 
 unsigned int EV_NQSTATS ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sfxge_evq*,unsigned int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  sfxge_evq_stat_handler ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct sfxge_evq *evq)
{
	struct sfxge_softc *sc = evq->sc;
	struct sysctl_ctx_list *ctx = FUNC3(sc->dev);
	char name[16];
	struct sysctl_oid *evq_stats_node;
	unsigned int id;

	FUNC5(name, sizeof(name), "%u", evq->index);
	evq_stats_node = FUNC0(ctx,
					 FUNC2(sc->evqs_stats_node),
					 OID_AUTO, name, CTLFLAG_RD, NULL, "");
	if (evq_stats_node == NULL)
		return (ENOMEM);

	for (id = 0; id < EV_NQSTATS; id++) {
		FUNC1(
			ctx, FUNC2(evq_stats_node),
			OID_AUTO, FUNC4(sc->enp, id),
			CTLTYPE_U64|CTLFLAG_RD,
			evq, id, sfxge_evq_stat_handler, "Q",
			"");
	}

	return (0);
}