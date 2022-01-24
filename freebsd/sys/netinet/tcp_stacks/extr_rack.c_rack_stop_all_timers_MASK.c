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
struct tcpcb {scalar_t__ t_fb_ptr; } ;
struct tcp_rack {int rc_in_persist; } ;

/* Variables and functions */
 int /*<<< orphan*/  TT_DELACK ; 
 int /*<<< orphan*/  TT_KEEP ; 
 int /*<<< orphan*/  TT_PERSIST ; 
 int /*<<< orphan*/  TT_REXMT ; 
 scalar_t__ FUNC0 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct tcpcb *tp)
{
	struct tcp_rack *rack;

	/*
	 * Assure no timers are running.
	 */
	if (FUNC0(tp, TT_PERSIST)) {
		/* We enter in persists, set the flag appropriately */
		rack = (struct tcp_rack *)tp->t_fb_ptr;
		rack->rc_in_persist = 1;
	}
	FUNC1(tp, TT_PERSIST);
	FUNC1(tp, TT_REXMT);
	FUNC1(tp, TT_KEEP);
	FUNC1(tp, TT_DELACK);
}