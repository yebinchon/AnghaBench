#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct netconfig {int /*<<< orphan*/  nc_netid; } ;
struct netbuf {int dummy; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
typedef  TYPE_2__* rpcblist_ptr ;
typedef  int /*<<< orphan*/  rpcblist ;
struct TYPE_5__ {void* r_owner; int /*<<< orphan*/  r_addr; void* r_netid; int /*<<< orphan*/  r_vers; int /*<<< orphan*/  r_prog; } ;
struct TYPE_6__ {struct TYPE_6__* rpcb_next; TYPE_1__ rpcb_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* list_rbl ; 
 TYPE_2__* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  superuser ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct netconfig*,struct netbuf*) ; 

__attribute__((used)) static void
FUNC5(rpcprog_t prog, rpcvers_t vers, struct netconfig *nconf,
	    struct netbuf *addr)
{
	rpcblist_ptr rbl;

	rbl = FUNC1(sizeof (rpcblist));
	if (rbl == NULL) {
		FUNC3(LOG_ERR, "no memory!");
		FUNC0(1);
	}

	rbl->rpcb_map.r_prog = prog;
	rbl->rpcb_map.r_vers = vers;
	rbl->rpcb_map.r_netid = FUNC2(nconf->nc_netid);
	rbl->rpcb_map.r_addr = FUNC4(nconf, addr);
	rbl->rpcb_map.r_owner = FUNC2(superuser);
	rbl->rpcb_next = list_rbl;	/* Attach to global list */
	list_rbl = rbl;
}