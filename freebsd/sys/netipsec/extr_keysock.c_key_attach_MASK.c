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
struct thread {int dummy; } ;
struct socket {int /*<<< orphan*/  so_options; int /*<<< orphan*/ * so_pcb; } ;
struct TYPE_4__ {scalar_t__ sp_protocol; } ;
struct TYPE_5__ {TYPE_1__ rcb_proto; } ;
struct keycb {TYPE_2__ kp_raw; scalar_t__ kp_registered; scalar_t__ kp_promisc; } ;
typedef  void* caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  any_count; int /*<<< orphan*/  key_count; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_PCB ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ PF_KEY ; 
 int /*<<< orphan*/  PRIV_NET_RAW ; 
 int /*<<< orphan*/  SO_USELOOPBACK ; 
 TYPE_3__ V_key_cb ; 
 int /*<<< orphan*/  FUNC1 (struct keycb*,int /*<<< orphan*/ ) ; 
 struct keycb* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 scalar_t__ FUNC6 (struct socket*) ; 

__attribute__((used)) static int
FUNC7(struct socket *so, int proto, struct thread *td)
{
	struct keycb *kp;
	int error;

	FUNC0(so->so_pcb == NULL, ("key_attach: so_pcb != NULL"));

	if (td != NULL) {
		error = FUNC3(td, PRIV_NET_RAW);
		if (error)
			return error;
	}

	/* XXX */
	kp = FUNC2(sizeof *kp, M_PCB, M_WAITOK | M_ZERO); 
	if (kp == NULL)
		return ENOBUFS;

	so->so_pcb = (caddr_t)kp;
	error = FUNC4(so, proto);
	kp = (struct keycb *)FUNC6(so);
	if (error) {
		FUNC1(kp, M_PCB);
		so->so_pcb = (caddr_t) 0;
		return error;
	}

	kp->kp_promisc = kp->kp_registered = 0;

	if (kp->kp_raw.rcb_proto.sp_protocol == PF_KEY) /* XXX: AF_KEY */
		V_key_cb.key_count++;
	V_key_cb.any_count++;
	FUNC5(so);
	so->so_options |= SO_USELOOPBACK;

	return 0;
}