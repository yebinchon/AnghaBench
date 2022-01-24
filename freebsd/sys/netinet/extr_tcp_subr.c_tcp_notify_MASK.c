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
struct tcpcb {scalar_t__ t_state; int t_rxtshift; int t_softerror; } ;
struct rtentry {int dummy; } ;
struct TYPE_5__ {struct rtentry* ro_rt; } ;
struct inpcb {int inp_flags; TYPE_1__ inp_route; } ;
struct TYPE_6__ {int /*<<< orphan*/  so_timeo; } ;

/* Variables and functions */
 int EHOSTDOWN ; 
 int EHOSTUNREACH ; 
 int ENETUNREACH ; 
 int INP_DROPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 scalar_t__ TCPS_ESTABLISHED ; 
 int /*<<< orphan*/  V_tcbinfo ; 
 struct tcpcb* FUNC4 (struct inpcb*) ; 
 TYPE_2__* so ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct tcpcb* FUNC7 (struct tcpcb*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inpcb *
FUNC9(struct inpcb *inp, int error)
{
	struct tcpcb *tp;

	FUNC0(&V_tcbinfo);
	FUNC1(inp);

	if ((inp->inp_flags & INP_TIMEWAIT) ||
	    (inp->inp_flags & INP_DROPPED))
		return (inp);

	tp = FUNC4(inp);
	FUNC2(tp != NULL, ("tcp_notify: tp == NULL"));

	/*
	 * Ignore some errors if we are hooked up.
	 * If connection hasn't completed, has retransmitted several times,
	 * and receives a second error, give up now.  This is better
	 * than waiting a long time to establish a connection that
	 * can never complete.
	 */
	if (tp->t_state == TCPS_ESTABLISHED &&
	    (error == EHOSTUNREACH || error == ENETUNREACH ||
	     error == EHOSTDOWN)) {
		if (inp->inp_route.ro_rt) {
			FUNC3(inp->inp_route.ro_rt);
			inp->inp_route.ro_rt = (struct rtentry *)NULL;
		}
		return (inp);
	} else if (tp->t_state < TCPS_ESTABLISHED && tp->t_rxtshift > 3 &&
	    tp->t_softerror) {
		tp = FUNC7(tp, error);
		if (tp != NULL)
			return (inp);
		else
			return (NULL);
	} else {
		tp->t_softerror = error;
		return (inp);
	}
#if 0
	wakeup( &so->so_timeo);
	sorwakeup(so);
	sowwakeup(so);
#endif
}