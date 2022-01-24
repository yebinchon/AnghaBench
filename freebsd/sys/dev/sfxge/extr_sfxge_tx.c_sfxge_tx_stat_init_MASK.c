#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int /*<<< orphan*/  stats_node; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_ULONG ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sfxge_softc*,unsigned int,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  sfxge_tx_stat_handler ; 
 TYPE_1__* sfxge_tx_stats ; 

__attribute__((used)) static void
FUNC4(struct sfxge_softc *sc)
{
	struct sysctl_ctx_list *ctx = FUNC2(sc->dev);
	struct sysctl_oid_list *stat_list;
	unsigned int id;

	stat_list = FUNC1(sc->stats_node);

	for (id = 0; id < FUNC3(sfxge_tx_stats); id++) {
		FUNC0(
			ctx, stat_list,
			OID_AUTO, sfxge_tx_stats[id].name,
			CTLTYPE_ULONG|CTLFLAG_RD,
			sc, id, sfxge_tx_stat_handler, "LU",
			"");
	}
}