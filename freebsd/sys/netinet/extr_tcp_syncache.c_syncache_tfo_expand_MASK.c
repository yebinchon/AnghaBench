#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  server; } ;
struct tcpcb {unsigned int* t_tfo_pending; int /*<<< orphan*/  iss; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  snd_max; TYPE_1__ t_tfo_cookie; int /*<<< orphan*/  t_flags; } ;
struct syncache {int dummy; } ;
struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TF_FASTOPEN ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int) ; 
 struct tcpcb* FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 struct inpcb* FUNC5 (struct socket*) ; 
 struct socket* FUNC6 (struct syncache*,struct socket*,struct mbuf*) ; 
 int /*<<< orphan*/  tcps_sc_aborted ; 
 int /*<<< orphan*/  tcps_sc_completed ; 

__attribute__((used)) static void
FUNC7(struct syncache *sc, struct socket **lsop, struct mbuf *m,
    uint64_t response_cookie)
{
	struct inpcb *inp;
	struct tcpcb *tp;
	unsigned int *pending_counter;

	FUNC0();

	pending_counter = FUNC3(FUNC5(*lsop))->t_tfo_pending;
	*lsop = FUNC6(sc, *lsop, m);
	if (*lsop == NULL) {
		FUNC1(tcps_sc_aborted);
		FUNC2(pending_counter, 1);
	} else {
		FUNC4(*lsop);
		inp = FUNC5(*lsop);
		tp = FUNC3(inp);
		tp->t_flags |= TF_FASTOPEN;
		tp->t_tfo_cookie.server = response_cookie;
		tp->snd_max = tp->iss;
		tp->snd_nxt = tp->iss;
		tp->t_tfo_pending = pending_counter;
		FUNC1(tcps_sc_completed);
	}
}