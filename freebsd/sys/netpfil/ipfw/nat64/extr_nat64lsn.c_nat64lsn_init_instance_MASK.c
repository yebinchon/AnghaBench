#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nat64lsn_hosts_slist {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cnt; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct nat64lsn_cfg {int hosts_hashsize; int prefix4; int pmask4; int plen4; int /*<<< orphan*/  jcallout; int /*<<< orphan*/  periodic_lock; int /*<<< orphan*/  periodic; struct nat64lsn_alias* aliases; int /*<<< orphan*/ * hosts_hash; int /*<<< orphan*/  hash_seed; TYPE_2__ base; int /*<<< orphan*/  vp; int /*<<< orphan*/  jhead; } ;
struct nat64lsn_alias {int addr; int /*<<< orphan*/  hosts; } ;
struct ip_fw_chain {int dummy; } ;
typedef  int in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nat64lsn_alias*) ; 
 int /*<<< orphan*/  FUNC1 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  CALLOUT_MPSAFE ; 
 int /*<<< orphan*/  FUNC2 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_NAT64LSN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NAT64LSN_HOSTS_HSIZE ; 
 int /*<<< orphan*/  NAT64STATS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 
 void* FUNC9 (int,int /*<<< orphan*/ ,int) ; 

struct nat64lsn_cfg *
FUNC10(struct ip_fw_chain *ch, in_addr_t prefix, int plen)
{
	struct nat64lsn_cfg *cfg;
	struct nat64lsn_alias *alias;
	int i, naddr;

	cfg = FUNC9(sizeof(struct nat64lsn_cfg), M_NAT64LSN,
	    M_WAITOK | M_ZERO);

	FUNC2(cfg);
	FUNC1(cfg);
	FUNC5(&cfg->jhead);
	cfg->vp = curvnet;
	FUNC4(cfg->base.stats.cnt, NAT64STATS, M_WAITOK);

	cfg->hash_seed = FUNC6();
	cfg->hosts_hashsize = NAT64LSN_HOSTS_HSIZE;
	cfg->hosts_hash = FUNC9(sizeof(struct nat64lsn_hosts_slist) *
	    cfg->hosts_hashsize, M_NAT64LSN, M_WAITOK | M_ZERO);
	for (i = 0; i < cfg->hosts_hashsize; i++)
		FUNC3(&cfg->hosts_hash[i]);

	naddr = 1 << (32 - plen);
	cfg->prefix4 = prefix;
	cfg->pmask4 = prefix | (naddr - 1);
	cfg->plen4 = plen;
	cfg->aliases = FUNC9(sizeof(struct nat64lsn_alias) * naddr,
	    M_NAT64LSN, M_WAITOK | M_ZERO);
	for (i = 0; i < naddr; i++) {
		alias = &cfg->aliases[i];
		alias->addr = prefix + i; /* host byte order */
		FUNC3(&alias->hosts);
		FUNC0(alias);
	}

        FUNC8(&cfg->periodic, &cfg->periodic_lock, 0);
        FUNC7(&cfg->jcallout, CALLOUT_MPSAFE);

	return (cfg);
}