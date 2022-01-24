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
typedef  scalar_t__ uint64_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  client; } ;
struct tcpcb {scalar_t__ t_tfo_client_cookie_len; int /*<<< orphan*/  t_flags; int /*<<< orphan*/  t_maxseg; int /*<<< orphan*/  snd_wnd; TYPE_1__ t_tfo_cookie; struct inpcb* t_inpcb; } ;
struct tcp_fastopen_ccache_entry {scalar_t__ disable_time; scalar_t__ cookie_len; int server_mss; scalar_t__* cookie; } ;
struct tcp_fastopen_ccache_bucket {int dummy; } ;
struct inpcb {int /*<<< orphan*/  inp_inc; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_fastopen_ccache_bucket*) ; 
 scalar_t__ TCP_FASTOPEN_COOKIE_LEN ; 
 scalar_t__ TCP_FASTOPEN_PSK_LEN ; 
 int /*<<< orphan*/  TF_FASTOPEN ; 
 scalar_t__ V_tcp_fastopen_path_disable_time ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 struct tcp_fastopen_ccache_entry* FUNC3 (int /*<<< orphan*/ *,struct tcp_fastopen_ccache_bucket**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*,int) ; 

void
FUNC6(struct tcpcb *tp)
{
	struct inpcb *inp;
	struct tcp_fastopen_ccache_bucket *ccb;
	struct tcp_fastopen_ccache_entry *cce;
	sbintime_t now;
	uint16_t server_mss;
	uint64_t psk_cookie;
	
	psk_cookie = 0;
	inp = tp->t_inpcb;
	cce = FUNC3(&inp->inp_inc, &ccb);
	if (cce) {
		if (cce->disable_time == 0) {
			if ((cce->cookie_len > 0) &&
			    (tp->t_tfo_client_cookie_len ==
			     TCP_FASTOPEN_PSK_LEN)) {
				psk_cookie =
				    FUNC4(
					tp->t_tfo_cookie.client,
					cce->cookie, cce->cookie_len);
			} else {
				tp->t_tfo_client_cookie_len = cce->cookie_len;
				FUNC2(tp->t_tfo_cookie.client, cce->cookie,
				    cce->cookie_len);
			}
			server_mss = cce->server_mss;
			FUNC0(ccb);
			if (tp->t_tfo_client_cookie_len ==
			    TCP_FASTOPEN_PSK_LEN && psk_cookie) {
				tp->t_tfo_client_cookie_len =
				    TCP_FASTOPEN_COOKIE_LEN;
				FUNC2(tp->t_tfo_cookie.client, &psk_cookie,
				    TCP_FASTOPEN_COOKIE_LEN);
			}
			FUNC5(tp, server_mss ? server_mss : -1);
			tp->snd_wnd = tp->t_maxseg;
		} else {
			/*
			 * The path is disabled.  Check the time and
			 * possibly re-enable.
			 */
			now = FUNC1();
			if (now - cce->disable_time >
			    ((sbintime_t)V_tcp_fastopen_path_disable_time << 32)) {
				/*
				 * Re-enable path.  Force a TFO cookie
				 * request.  Forget the old MSS as it may be
				 * bogus now, and we will rediscover it in
				 * the SYN|ACK.
				 */
				cce->disable_time = 0;
				cce->server_mss = 0;
				cce->cookie_len = 0;
				/*
				 * tp->t_tfo... cookie details are already
				 * zero from the tcpcb init.
				 */
			} else {
				/*
				 * Path is disabled, so disable TFO on this
				 * connection.
				 */
				tp->t_flags &= ~TF_FASTOPEN;
			}
			FUNC0(ccb);
			FUNC5(tp, -1);
			/*
			 * snd_wnd is irrelevant since we are either forcing
			 * a TFO cookie request or disabling TFO - either
			 * way, no data with the SYN.
			 */
		}
	} else {
		/*
		 * A new entry for this path will be created when a SYN|ACK
		 * comes back, or the attempt otherwise fails.
		 */
		FUNC0(ccb);
		FUNC5(tp, -1);
		/*
		 * snd_wnd is irrelevant since we are forcing a TFO cookie
		 * request.
		 */
	}
}