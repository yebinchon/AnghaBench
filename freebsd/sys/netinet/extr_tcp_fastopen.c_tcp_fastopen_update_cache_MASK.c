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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct tcpcb {TYPE_1__* t_inpcb; } ;
struct tcp_fastopen_ccache_entry {int cookie_len; scalar_t__ disable_time; scalar_t__ server_mss; int /*<<< orphan*/  cookie; } ;
struct tcp_fastopen_ccache_bucket {int dummy; } ;
struct in_conninfo {int dummy; } ;
struct TYPE_2__ {struct in_conninfo inp_inc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_fastopen_ccache_bucket*) ; 
 int TCP_FASTOPEN_MAX_COOKIE_LEN ; 
 int TCP_FASTOPEN_MIN_COOKIE_LEN ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_fastopen_ccache_bucket*,struct in_conninfo*,scalar_t__,int,int*) ; 
 struct tcp_fastopen_ccache_entry* FUNC4 (struct in_conninfo*,struct tcp_fastopen_ccache_bucket**) ; 

void
FUNC5(struct tcpcb *tp, uint16_t mss,
    uint8_t cookie_len, uint8_t *cookie)
{
	struct in_conninfo *inc = &tp->t_inpcb->inp_inc;
	struct tcp_fastopen_ccache_bucket *ccb;
	struct tcp_fastopen_ccache_entry *cce;

	cce = FUNC4(inc, &ccb);
	if (cce) {
		if ((cookie_len >= TCP_FASTOPEN_MIN_COOKIE_LEN) &&
		    (cookie_len <= TCP_FASTOPEN_MAX_COOKIE_LEN) &&
		    ((cookie_len & 0x1) == 0)) {
			cce->server_mss = mss;
			cce->cookie_len = cookie_len;
			FUNC2(cce->cookie, cookie, cookie_len);
			cce->disable_time = 0;
		} else {
			/* invalid cookie length, disable entry */
			cce->server_mss = 0;
			cce->cookie_len = 0;
			/*
			 * Preserve the existing disable time if it is
			 * already disabled.
			 */
			if (cce->disable_time == 0)
				cce->disable_time = FUNC1();
		}
	} else
		FUNC3(ccb, inc, mss, cookie_len, cookie);

	FUNC0(ccb);
}