#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcpcb {int t_softerror; TYPE_1__* t_fb; int /*<<< orphan*/  t_state; TYPE_2__* t_inpcb; } ;
struct socket {int so_error; } ;
struct TYPE_4__ {struct socket* inp_socket; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* tfb_tcp_output ) (struct tcpcb*) ;} ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPS_CLOSED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_tcbinfo ; 
 int /*<<< orphan*/  FUNC4 (struct tcpcb*) ; 
 struct tcpcb* FUNC5 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcps_conndrops ; 
 int /*<<< orphan*/  tcps_drops ; 

struct tcpcb *
FUNC7(struct tcpcb *tp, int errno)
{
	struct socket *so = tp->t_inpcb->inp_socket;

	FUNC0(&V_tcbinfo);
	FUNC1(tp->t_inpcb);

	if (FUNC3(tp->t_state)) {
		FUNC6(tp, TCPS_CLOSED);
		(void) tp->t_fb->tfb_tcp_output(tp);
		FUNC2(tcps_drops);
	} else
		FUNC2(tcps_conndrops);
	if (errno == ETIMEDOUT && tp->t_softerror)
		errno = tp->t_softerror;
	so->so_error = errno;
	return (FUNC5(tp));
}