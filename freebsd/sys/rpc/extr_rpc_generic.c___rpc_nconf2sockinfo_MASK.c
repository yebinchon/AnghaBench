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
struct netid_af {int dummy; } ;
struct netconfig {char* nc_netid; scalar_t__ nc_semantics; } ;
struct __rpc_sockinfo {int si_socktype; int /*<<< orphan*/  si_af; int /*<<< orphan*/  si_alen; int /*<<< orphan*/  si_proto; } ;
struct TYPE_2__ {char* netid; int /*<<< orphan*/  protocol; int /*<<< orphan*/  af; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 TYPE_1__* na_cvt ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int
FUNC3(const struct netconfig *nconf, struct __rpc_sockinfo *sip)
{
	int i;

	for (i = 0; i < (sizeof na_cvt) / (sizeof (struct netid_af)); i++)
		if (FUNC2(na_cvt[i].netid, nconf->nc_netid) == 0 || (
		    FUNC2(nconf->nc_netid, "unix") == 0 &&
		    FUNC2(na_cvt[i].netid, "local") == 0)) {
			sip->si_af = na_cvt[i].af;
			sip->si_proto = na_cvt[i].protocol;
			sip->si_socktype =
			    FUNC1((int)nconf->nc_semantics);
			if (sip->si_socktype == -1)
				return 0;
			sip->si_alen = FUNC0(sip->si_af);
			return 1;
		}

	return 0;
}