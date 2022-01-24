#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct TYPE_5__ {scalar_t__ sp_protocol; } ;
struct TYPE_6__ {TYPE_1__ rcb_proto; } ;
struct keycb {TYPE_2__ kp_raw; } ;
struct TYPE_8__ {int /*<<< orphan*/  any_count; int /*<<< orphan*/  key_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* pru_detach ) (struct socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ PF_KEY ; 
 TYPE_4__ V_key_cb ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 TYPE_3__ raw_usrreqs ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

__attribute__((used)) static void
FUNC4(struct socket *so)
{
	struct keycb *kp = (struct keycb *)FUNC2(so);

	FUNC0(kp != NULL, ("key_detach: kp == NULL"));
	if (kp->kp_raw.rcb_proto.sp_protocol
	    == PF_KEY) /* XXX: AF_KEY */
		V_key_cb.key_count--;
	V_key_cb.any_count--;

	FUNC1(so);
	raw_usrreqs.pru_detach(so);
}