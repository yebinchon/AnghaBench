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
struct thread {TYPE_1__* td_proc; } ;
struct socket {int /*<<< orphan*/  so_options; int /*<<< orphan*/ * so_pcb; int /*<<< orphan*/  so_fibnum; } ;
struct TYPE_5__ {int sp_protocol; } ;
struct rawcb {TYPE_2__ rcb_proto; } ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  any_count; int /*<<< orphan*/  ip6_count; int /*<<< orphan*/  ip_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_fibnum; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_PCB ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SO_USELOOPBACK ; 
 TYPE_3__ V_route_cb ; 
 int /*<<< orphan*/  FUNC3 (struct rawcb*,int /*<<< orphan*/ ) ; 
 struct rawcb* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 struct rawcb* FUNC7 (struct socket*) ; 

__attribute__((used)) static int
FUNC8(struct socket *so, int proto, struct thread *td)
{
	struct rawcb *rp;
	int error;

	FUNC0(so->so_pcb == NULL, ("rts_attach: so_pcb != NULL"));

	/* XXX */
	rp = FUNC4(sizeof *rp, M_PCB, M_WAITOK | M_ZERO);

	so->so_pcb = (caddr_t)rp;
	so->so_fibnum = td->td_proc->p_fibnum;
	error = FUNC5(so, proto);
	rp = FUNC7(so);
	if (error) {
		so->so_pcb = NULL;
		FUNC3(rp, M_PCB);
		return error;
	}
	FUNC1();
	switch(rp->rcb_proto.sp_protocol) {
	case AF_INET:
		V_route_cb.ip_count++;
		break;
	case AF_INET6:
		V_route_cb.ip6_count++;
		break;
	}
	V_route_cb.any_count++;
	FUNC2();
	FUNC6(so);
	so->so_options |= SO_USELOOPBACK;
	return 0;
}