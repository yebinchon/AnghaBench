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
struct nat64lsn_host {int /*<<< orphan*/  states_hash; TYPE_1__* alias; int /*<<< orphan*/  aliases; } ;
struct nat64lsn_aliaslink {int /*<<< orphan*/  states_hash; TYPE_1__* alias; int /*<<< orphan*/  aliases; } ;
struct TYPE_3__ {int /*<<< orphan*/  hosts_count; int /*<<< orphan*/  hosts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nat64lsn_host* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct nat64lsn_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nat64lsn_host*) ; 
 int /*<<< orphan*/  M_NAT64LSN ; 
 int /*<<< orphan*/  alias_entries ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  host_entries ; 
 int /*<<< orphan*/  nat64lsn_aliaslink ; 
 int /*<<< orphan*/  nat64lsn_aliaslink_zone ; 
 int /*<<< orphan*/  nat64lsn_host_zone ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct nat64lsn_host*) ; 

__attribute__((used)) static void
FUNC9(struct nat64lsn_host *host)
{
	struct nat64lsn_aliaslink *link;

	while (!FUNC2(&host->aliases)) {
		link = FUNC3(&host->aliases);
		FUNC5(&host->aliases, host_entries);

		FUNC0(link->alias);
		FUNC4(&link->alias->hosts, link,
		    nat64lsn_aliaslink, alias_entries);
		link->alias->hosts_count--;
		FUNC1(link->alias);

		FUNC8(nat64lsn_aliaslink_zone, link);
	}
	FUNC6(host);
	FUNC7(host->states_hash, M_NAT64LSN);
	FUNC8(nat64lsn_host_zone, host);
}