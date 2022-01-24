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
struct nat64lsn_host {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cnt; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct nat64lsn_cfg {int hosts_hashsize; int plen4; struct nat64lsn_cfg* aliases; struct nat64lsn_cfg* hosts_hash; TYPE_2__ base; int /*<<< orphan*/  jcallout; int /*<<< orphan*/  periodic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC4 (struct nat64lsn_cfg*) ; 
 struct nat64lsn_host* FUNC5 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC6 (struct nat64lsn_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NAT64LSN ; 
 int /*<<< orphan*/  NAT64STATS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC9 (struct nat64lsn_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nat64lsn_cfg*,struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC11 (struct nat64lsn_host*) ; 

void
FUNC12(struct nat64lsn_cfg *cfg)
{
	struct nat64lsn_host *host;
	int i;

	FUNC0(cfg);
	FUNC8(&cfg->periodic);
	FUNC2(cfg);
	FUNC8(&cfg->jcallout);

	for (i = 0; i < cfg->hosts_hashsize; i++) {
		while (!FUNC4(&cfg->hosts_hash[i])) {
			host = FUNC5(&cfg->hosts_hash[i]);
			FUNC6(&cfg->hosts_hash[i], entries);
			FUNC11(host);
		}
	}

	for (i = 0; i < (1 << (32 - cfg->plen4)); i++)
		FUNC10(cfg, &cfg->aliases[i]);

	FUNC1(cfg);
	FUNC3(cfg);
	FUNC7(cfg->base.stats.cnt, NAT64STATS);
	FUNC9(cfg->hosts_hash, M_NAT64LSN);
	FUNC9(cfg->aliases, M_NAT64LSN);
	FUNC9(cfg, M_NAT64LSN);
}