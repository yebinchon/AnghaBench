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
typedef  int uint32_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * chan_send_cnt; int /*<<< orphan*/  data_sg_cnt; int /*<<< orphan*/  data_vaddr_cnt; int /*<<< orphan*/  data_bio_cnt; } ;
struct storvsc_softc {int hs_nchan; TYPE_1__ sysctl_data; int /*<<< orphan*/ * hs_sel_chan; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct storvsc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(device_t dev)
{
	struct sysctl_oid_list *child;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *ch_tree, *chid_tree;
	struct storvsc_softc *sc;
	char name[16];
	int i;

	sc = FUNC3(dev);
	ctx = FUNC4(dev);
	child = FUNC2(FUNC5(dev));

	FUNC1(ctx, child, OID_AUTO, "data_bio_cnt", CTLFLAG_RW,
		&sc->sysctl_data.data_bio_cnt, "# of bio data block");
	FUNC1(ctx, child, OID_AUTO, "data_vaddr_cnt", CTLFLAG_RW,
		&sc->sysctl_data.data_vaddr_cnt, "# of vaddr data block");
	FUNC1(ctx, child, OID_AUTO, "data_sg_cnt", CTLFLAG_RW,
		&sc->sysctl_data.data_sg_cnt, "# of sg data block");

	/* dev.storvsc.UNIT.channel */
	ch_tree = FUNC0(ctx, child, OID_AUTO, "channel",
		CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
	if (ch_tree == NULL)
		return;

	for (i = 0; i < sc->hs_nchan; i++) {
		uint32_t ch_id;

		ch_id = FUNC7(sc->hs_sel_chan[i]);
		FUNC6(name, sizeof(name), "%d", ch_id);
		/* dev.storvsc.UNIT.channel.CHID */
		chid_tree = FUNC0(ctx, FUNC2(ch_tree),
			OID_AUTO, name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
		if (chid_tree == NULL)
			return;
		/* dev.storvsc.UNIT.channel.CHID.send_req */
		FUNC1(ctx, FUNC2(chid_tree), OID_AUTO,
			"send_req", CTLFLAG_RD, &sc->sysctl_data.chan_send_cnt[i],
			"# of request sending from this channel");
	}
}