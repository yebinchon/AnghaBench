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
typedef  unsigned int uint64_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int /*<<< orphan*/  enp; int /*<<< orphan*/  stats_node; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int enc_phy_stat_mask; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_UINT ; 
 unsigned int EFX_PHY_NSTATS ; 
 unsigned int EFX_PHY_STAT_OUI ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char const*,int,struct sfxge_softc*,unsigned int,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  sfxge_phy_stat_handler ; 

__attribute__((used)) static void
FUNC5(struct sfxge_softc *sc)
{
	struct sysctl_ctx_list *ctx = FUNC2(sc->dev);
	struct sysctl_oid_list *stat_list;
	unsigned int id;
	const char *name;
	uint64_t stat_mask = FUNC3(sc->enp)->enc_phy_stat_mask;

	stat_list = FUNC1(sc->stats_node);

	/* Initialise the named stats */
	for (id = 0; id < EFX_PHY_NSTATS; id++) {
		if (!(stat_mask & ((uint64_t)1 << id)))
			continue;
		name = FUNC4(sc->enp, id);
		FUNC0(
			ctx, stat_list,
			OID_AUTO, name, CTLTYPE_UINT|CTLFLAG_RD,
			sc, id, sfxge_phy_stat_handler,
			id == EFX_PHY_STAT_OUI ? "IX" : "IU",
			"");
	}
}