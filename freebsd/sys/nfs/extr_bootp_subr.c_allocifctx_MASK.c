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
struct bootpc_ifcontext {int xid; int /*<<< orphan*/  state; } ;
struct bootpc_globalcontext {int xid; int /*<<< orphan*/  interfaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  IF_BOOTP_UNRESOLVED ; 
 int /*<<< orphan*/  IF_DHCP_UNRESOLVED ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bootpc_ifcontext*,int /*<<< orphan*/ ) ; 
 struct bootpc_ifcontext* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC2(struct bootpc_globalcontext *gctx)
{
	struct bootpc_ifcontext *ifctx;

	ifctx = FUNC1(sizeof(*ifctx), M_TEMP, M_WAITOK | M_ZERO);
	ifctx->xid = gctx->xid;
#ifdef BOOTP_NO_DHCP
	ifctx->state = IF_BOOTP_UNRESOLVED;
#else
	ifctx->state = IF_DHCP_UNRESOLVED;
#endif
	gctx->xid += 0x100;
	FUNC0(&gctx->interfaces, ifctx, next);
}