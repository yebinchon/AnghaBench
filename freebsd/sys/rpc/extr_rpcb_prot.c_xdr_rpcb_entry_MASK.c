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
struct TYPE_3__ {int /*<<< orphan*/  r_nc_proto; int /*<<< orphan*/  r_nc_protofmly; int /*<<< orphan*/  r_nc_semantics; int /*<<< orphan*/  r_nc_netid; int /*<<< orphan*/  r_maddr; } ;
typedef  TYPE_1__ rpcb_entry ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  RPC_MAXDATASIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC2(XDR *xdrs, rpcb_entry *objp)
{
	if (!FUNC0(xdrs, &objp->r_maddr, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	if (!FUNC0(xdrs, &objp->r_nc_netid, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	if (!FUNC1(xdrs, &objp->r_nc_semantics)) {
		return (FALSE);
	}
	if (!FUNC0(xdrs, &objp->r_nc_protofmly, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	if (!FUNC0(xdrs, &objp->r_nc_proto, RPC_MAXDATASIZE)) {
		return (FALSE);
	}
	return (TRUE);
}