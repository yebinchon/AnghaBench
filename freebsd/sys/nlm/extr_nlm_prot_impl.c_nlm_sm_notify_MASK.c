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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sysid ;
struct nlm_sm_status {int /*<<< orphan*/  state; int /*<<< orphan*/  priv; int /*<<< orphan*/  mon_name; } ;
struct nlm_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nlm_host* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_host*) ; 

void
FUNC5(struct nlm_sm_status *argp)
{
	uint32_t sysid;
	struct nlm_host *host;

	FUNC0(3, "nlm_sm_notify(): mon_name = %s\n", argp->mon_name);
	FUNC1(&sysid, &argp->priv, sizeof(sysid));
	host = FUNC2(sysid);
	if (host) {
		FUNC3(host, argp->state);
		FUNC4(host);
	}
}