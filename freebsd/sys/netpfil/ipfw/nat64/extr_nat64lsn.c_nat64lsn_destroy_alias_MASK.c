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
struct nat64lsn_pg {int dummy; } ;
struct nat64lsn_cfg {int dummy; } ;
struct nat64lsn_alias {int /*<<< orphan*/ * icmp; int /*<<< orphan*/  icmp_chunkmask; int /*<<< orphan*/ * udp; int /*<<< orphan*/  udp_chunkmask; int /*<<< orphan*/ * tcp; int /*<<< orphan*/  tcp_chunkmask; int /*<<< orphan*/  portgroups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nat64lsn_alias*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nat64lsn_pg* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC5 (struct nat64lsn_pg*) ; 
 int /*<<< orphan*/  nat64lsn_pgchunk_zone ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct nat64lsn_cfg *cfg,
    struct nat64lsn_alias *alias)
{
	struct nat64lsn_pg *pg;
	int i;

	while (!FUNC1(&alias->portgroups)) {
		pg = FUNC2(&alias->portgroups);
		FUNC3(&alias->portgroups, entries);
		FUNC5(pg);
	}
	for (i = 0; i < 32; i++) {
		if (FUNC4(alias->tcp_chunkmask, i))
			FUNC6(nat64lsn_pgchunk_zone, alias->tcp[i]);
		if (FUNC4(alias->udp_chunkmask, i))
			FUNC6(nat64lsn_pgchunk_zone, alias->udp[i]);
		if (FUNC4(alias->icmp_chunkmask, i))
			FUNC6(nat64lsn_pgchunk_zone, alias->icmp[i]);
	}
	FUNC0(alias);
}