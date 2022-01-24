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
struct nat64lsn_cfg {int plen4; struct nat64lsn_alias* aliases; int /*<<< orphan*/  hosts_count; } ;
struct nat64lsn_alias {int /*<<< orphan*/ * icmp_pgmask; int /*<<< orphan*/  icmp_chunkmask; int /*<<< orphan*/ * udp_pgmask; int /*<<< orphan*/  udp_chunkmask; int /*<<< orphan*/ * tcp_pgmask; int /*<<< orphan*/  tcp_chunkmask; } ;
struct ipfw_nat64lsn_stats {int /*<<< orphan*/  icmpchunks; int /*<<< orphan*/  udpchunks; int /*<<< orphan*/  tcpchunks; int /*<<< orphan*/  hostcount; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nat64lsn_cfg*,struct ipfw_nat64lsn_stats*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dropped ; 
 int /*<<< orphan*/  ifrags ; 
 int /*<<< orphan*/  jcalls ; 
 int /*<<< orphan*/  jhostfails ; 
 int /*<<< orphan*/  jhostsreq ; 
 int /*<<< orphan*/  jmaxlen ; 
 int /*<<< orphan*/  jnomem ; 
 int /*<<< orphan*/  jportfails ; 
 int /*<<< orphan*/  jportreq ; 
 int /*<<< orphan*/  jreinjected ; 
 int /*<<< orphan*/  jrequests ; 
 int /*<<< orphan*/  nomatch4 ; 
 int /*<<< orphan*/  nomem ; 
 int /*<<< orphan*/  noproto ; 
 int /*<<< orphan*/  noroute4 ; 
 int /*<<< orphan*/  noroute6 ; 
 int /*<<< orphan*/  oerrors ; 
 int /*<<< orphan*/  ofrags ; 
 int /*<<< orphan*/  opcnt46 ; 
 int /*<<< orphan*/  opcnt64 ; 
 int /*<<< orphan*/  screated ; 
 int /*<<< orphan*/  sdeleted ; 
 int /*<<< orphan*/  spgcreated ; 
 int /*<<< orphan*/  spgdeleted ; 

__attribute__((used)) static void
FUNC3(struct ip_fw_chain *ch, struct nat64lsn_cfg *cfg,
    struct ipfw_nat64lsn_stats *stats)
{
	struct nat64lsn_alias *alias;
	int i, j;

	FUNC1(cfg, stats, opcnt64);
	FUNC1(cfg, stats, opcnt46);
	FUNC1(cfg, stats, ofrags);
	FUNC1(cfg, stats, ifrags);
	FUNC1(cfg, stats, oerrors);
	FUNC1(cfg, stats, noroute4);
	FUNC1(cfg, stats, noroute6);
	FUNC1(cfg, stats, nomatch4);
	FUNC1(cfg, stats, noproto);
	FUNC1(cfg, stats, nomem);
	FUNC1(cfg, stats, dropped);

	FUNC1(cfg, stats, jcalls);
	FUNC1(cfg, stats, jrequests);
	FUNC1(cfg, stats, jhostsreq);
	FUNC1(cfg, stats, jportreq);
	FUNC1(cfg, stats, jhostfails);
	FUNC1(cfg, stats, jportfails);
	FUNC1(cfg, stats, jmaxlen);
	FUNC1(cfg, stats, jnomem);
	FUNC1(cfg, stats, jreinjected);
	FUNC1(cfg, stats, screated);
	FUNC1(cfg, stats, sdeleted);
	FUNC1(cfg, stats, spgcreated);
	FUNC1(cfg, stats, spgdeleted);

	stats->hostcount = cfg->hosts_count;
	for (i = 0; i < (1 << (32 - cfg->plen4)); i++) {
		alias = &cfg->aliases[i];
		for (j = 0; j < 32 && FUNC0(alias->tcp_chunkmask, j); j++)
			stats->tcpchunks += FUNC2(alias->tcp_pgmask[j]);
		for (j = 0; j < 32 && FUNC0(alias->udp_chunkmask, j); j++)
			stats->udpchunks += FUNC2(alias->udp_pgmask[j]);
		for (j = 0; j < 32 && FUNC0(alias->icmp_chunkmask, j); j++)
			stats->icmpchunks += FUNC2(alias->icmp_pgmask[j]);
	}
}