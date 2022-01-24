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
struct uath_stat {int /*<<< orphan*/  st_tx_pending; int /*<<< orphan*/  st_tx_inactive; int /*<<< orphan*/  st_tx_active; int /*<<< orphan*/  st_rx_inactive; int /*<<< orphan*/  st_rx_active; int /*<<< orphan*/  st_cmd_waiting; int /*<<< orphan*/  st_cmd_pending; int /*<<< orphan*/  st_cmd_inactive; int /*<<< orphan*/  st_cmd_active; int /*<<< orphan*/  st_err; int /*<<< orphan*/  st_keyerr; int /*<<< orphan*/  st_decomperr; int /*<<< orphan*/  st_decrypt_micerr; int /*<<< orphan*/  st_decrypt_crcerr; int /*<<< orphan*/  st_phyerr; int /*<<< orphan*/  st_crcerr; int /*<<< orphan*/  st_stopinprogress; int /*<<< orphan*/  st_toobigrxpkt; int /*<<< orphan*/  st_multichunk; int /*<<< orphan*/  st_invalidlen; int /*<<< orphan*/  st_badchunkseqnum; } ;
struct uath_softc {int /*<<< orphan*/  sc_dev; struct uath_stat sc_stat; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct uath_softc *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *child;
	struct sysctl_oid *tree;
	struct uath_stat *stats;

	stats = &sc->sc_stat;
	ctx = FUNC3(sc->sc_dev);
	child = FUNC1(FUNC4(sc->sc_dev));

	tree = FUNC0(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "UATH statistics");
	child = FUNC1(tree);
	FUNC2(ctx, child, "badchunkseqnum",
	    &stats->st_badchunkseqnum, "Bad chunk sequence numbers");
	FUNC2(ctx, child, "invalidlen", &stats->st_invalidlen,
	    "Invalid length");
	FUNC2(ctx, child, "multichunk", &stats->st_multichunk,
	    "Multi chunks");
	FUNC2(ctx, child, "toobigrxpkt",
	    &stats->st_toobigrxpkt, "Too big rx packets");
	FUNC2(ctx, child, "stopinprogress",
	    &stats->st_stopinprogress, "Stop in progress");
	FUNC2(ctx, child, "crcerrs", &stats->st_crcerr,
	    "CRC errors");
	FUNC2(ctx, child, "phyerr", &stats->st_phyerr,
	    "PHY errors");
	FUNC2(ctx, child, "decrypt_crcerr",
	    &stats->st_decrypt_crcerr, "Decryption CRC errors");
	FUNC2(ctx, child, "decrypt_micerr",
	    &stats->st_decrypt_micerr, "Decryption Misc errors");
	FUNC2(ctx, child, "decomperr", &stats->st_decomperr,
	    "Decomp errors");
	FUNC2(ctx, child, "keyerr", &stats->st_keyerr,
	    "Key errors");
	FUNC2(ctx, child, "err", &stats->st_err,
	    "Unknown errors");

	FUNC2(ctx, child, "cmd_active",
	    &stats->st_cmd_active, "Active numbers in Command queue");
	FUNC2(ctx, child, "cmd_inactive",
	    &stats->st_cmd_inactive, "Inactive numbers in Command queue");
	FUNC2(ctx, child, "cmd_pending",
	    &stats->st_cmd_pending, "Pending numbers in Command queue");
	FUNC2(ctx, child, "cmd_waiting",
	    &stats->st_cmd_waiting, "Waiting numbers in Command queue");
	FUNC2(ctx, child, "rx_active",
	    &stats->st_rx_active, "Active numbers in RX queue");
	FUNC2(ctx, child, "rx_inactive",
	    &stats->st_rx_inactive, "Inactive numbers in RX queue");
	FUNC2(ctx, child, "tx_active",
	    &stats->st_tx_active, "Active numbers in TX queue");
	FUNC2(ctx, child, "tx_inactive",
	    &stats->st_tx_inactive, "Inactive numbers in TX queue");
	FUNC2(ctx, child, "tx_pending",
	    &stats->st_tx_pending, "Pending numbers in TX queue");
}