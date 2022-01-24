#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpcent {char* r_name; } ;
typedef  TYPE_1__* rpcbs_addrlist_ptr ;
struct TYPE_5__ {TYPE_1__* addrinfo; } ;
typedef  TYPE_2__ rpcb_stat ;
struct TYPE_4__ {int prog; int vers; char* netid; int success; int failure; struct TYPE_4__* next; } ;

/* Variables and functions */
 struct rpcent* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(int rtype, rpcb_stat *infp)
{
	rpcbs_addrlist_ptr al;
	register struct rpcent *rpc;

	FUNC1("prog\t\tvers\tnetid\t  success\tfailure\n");
	for (al = infp->addrinfo; al; al = al->next) {
		rpc = FUNC0(al->prog);
		if (rpc)
			FUNC1("%-16s", rpc->r_name);
		else
			FUNC1("%-16d", al->prog);
		FUNC1("%d\t%s\t  %-12d\t%d\n",
			al->vers, al->netid,
			al->success, al->failure);
	}
}