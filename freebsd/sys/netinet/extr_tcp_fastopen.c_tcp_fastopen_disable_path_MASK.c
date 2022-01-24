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
struct tcpcb {int /*<<< orphan*/  t_flags; TYPE_1__* t_inpcb; } ;
struct tcp_fastopen_ccache_entry {scalar_t__ disable_time; scalar_t__ cookie_len; scalar_t__ server_mss; } ;
struct tcp_fastopen_ccache_bucket {int dummy; } ;
struct in_conninfo {int dummy; } ;
struct TYPE_2__ {struct in_conninfo inp_inc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_fastopen_ccache_bucket*) ; 
 scalar_t__ TCP_FASTOPEN_MAX_COOKIE_LEN ; 
 int /*<<< orphan*/  TF_FASTOPEN ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_fastopen_ccache_bucket*,struct in_conninfo*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct tcp_fastopen_ccache_entry* FUNC3 (struct in_conninfo*,struct tcp_fastopen_ccache_bucket**) ; 

void
FUNC4(struct tcpcb *tp)
{
	struct in_conninfo *inc = &tp->t_inpcb->inp_inc;
	struct tcp_fastopen_ccache_bucket *ccb;
	struct tcp_fastopen_ccache_entry *cce;

	cce = FUNC3(inc, &ccb);
	if (cce) {
		cce->server_mss = 0;
		cce->cookie_len = 0;
		/*
		 * Preserve the existing disable time if it is already
		 * disabled.
		 */
		if (cce->disable_time == 0)
			cce->disable_time = FUNC1();
	} else /* use invalid cookie len to create disabled entry */
		FUNC2(ccb, inc, 0,
	   	    TCP_FASTOPEN_MAX_COOKIE_LEN + 1, NULL);

	FUNC0(ccb);
	tp->t_flags &= ~TF_FASTOPEN;
}