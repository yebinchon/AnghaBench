#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct TYPE_4__ {int sp_protocol; } ;
struct rawcb {TYPE_1__ rcb_proto; } ;
struct TYPE_6__ {int /*<<< orphan*/  any_count; int /*<<< orphan*/  ip6_count; int /*<<< orphan*/  ip_count; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* pru_detach ) (struct socket*) ;} ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__ V_route_cb ; 
 TYPE_2__ raw_usrreqs ; 
 struct rawcb* FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 

__attribute__((used)) static void
FUNC5(struct socket *so)
{
	struct rawcb *rp = FUNC3(so);

	FUNC0(rp != NULL, ("rts_detach: rp == NULL"));

	FUNC1();
	switch(rp->rcb_proto.sp_protocol) {
	case AF_INET:
		V_route_cb.ip_count--;
		break;
	case AF_INET6:
		V_route_cb.ip6_count--;
		break;
	}
	V_route_cb.any_count--;
	FUNC2();
	raw_usrreqs.pru_detach(so);
}