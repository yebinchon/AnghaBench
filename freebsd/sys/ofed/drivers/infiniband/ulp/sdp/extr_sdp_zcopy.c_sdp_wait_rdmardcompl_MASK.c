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
struct tx_srcavail_state {int abort_flags; scalar_t__ bytes_acked; scalar_t__ bytes_sent; } ;
struct socket {int /*<<< orphan*/  sk_sleep; } ;
struct sdp_sock {scalar_t__ qp_active; struct socket* socket; scalar_t__ rx_sa; struct tx_srcavail_state* tx_sa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINTR ; 
 int EINVAL ; 
 int ETIME ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int TX_SA_CROSS_SEND ; 
 int TX_SA_ERROR ; 
 int TX_SA_INTRRUPTED ; 
 int TX_SA_SENDSM ; 
 int TX_SA_TIMEDOUT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,long*,int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  zcopy_cross_send ; 
 int /*<<< orphan*/  zcopy_tx_aborted ; 
 int /*<<< orphan*/  zcopy_tx_timeout ; 

__attribute__((used)) static int FUNC12(struct sdp_sock *ssk, long *timeo_p,
		int ignore_signals)
{
	struct socket *sk = ssk->socket;
	int err = 0;
	long vm_wait = 0;
	long current_timeo = *timeo_p;
	struct tx_srcavail_state *tx_sa = ssk->tx_sa;
	FUNC0(wait);

	FUNC7(sk, "sleep till RdmaRdCompl. timeo = %ld.\n", *timeo_p);
	FUNC8(sk, NULL, "Going to sleep");
	while (ssk->qp_active) {
		FUNC5(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

		if (FUNC11(!*timeo_p)) {
			err = -ETIME;
			tx_sa->abort_flags |= TX_SA_TIMEDOUT;
			FUNC8(sk, NULL, "timeout");
			FUNC1(zcopy_tx_timeout);
			break;
		}

		else if (tx_sa->bytes_acked > tx_sa->bytes_sent) {
			err = -EINVAL;
			FUNC7(sk, "acked bytes > sent bytes\n");
			tx_sa->abort_flags |= TX_SA_ERROR;
			break;
		}

		if (tx_sa->abort_flags & TX_SA_SENDSM) {
			FUNC8(sk, NULL, "Aborting SrcAvail sending");
			FUNC1(zcopy_tx_aborted);
			err = -EAGAIN;
			break ;
		}

		if (!ignore_signals) {
			if (FUNC9(current)) {
				err = -EINTR;
				FUNC8(sk, NULL, "signalled");
				tx_sa->abort_flags |= TX_SA_INTRRUPTED;
				break;
			}

			if (ssk->rx_sa && (tx_sa->bytes_acked < tx_sa->bytes_sent)) {
				FUNC7(sk, "Crossing SrcAvail - aborting this\n");
				tx_sa->abort_flags |= TX_SA_CROSS_SEND;
				FUNC1(zcopy_cross_send);
				err = -ETIME;
				break ;
			}
		}

		FUNC4(ssk);

		FUNC10(sk, &current_timeo,
				tx_sa->abort_flags &&
				ssk->rx_sa &&
				(tx_sa->bytes_acked < tx_sa->bytes_sent) && 
				vm_wait);
		FUNC7(ssk->socket, "woke up sleepers\n");

		FUNC3(ssk);

		if (tx_sa->bytes_acked == tx_sa->bytes_sent)
			break;

		if (vm_wait) {
			vm_wait -= current_timeo;
			current_timeo = *timeo_p;
			if (current_timeo != MAX_SCHEDULE_TIMEOUT &&
			    (current_timeo -= vm_wait) < 0)
				current_timeo = 0;
			vm_wait = 0;
		}
		*timeo_p = current_timeo;
	}

	FUNC2(sk->sk_sleep, &wait);

	FUNC7(sk, "Finished waiting - RdmaRdCompl: %d/%d bytes, flags: 0x%x\n",
			tx_sa->bytes_acked, tx_sa->bytes_sent, tx_sa->abort_flags);

	if (!ssk->qp_active) {
		FUNC6(sk, "QP destroyed while waiting\n");
		return -EINVAL;
	}
	return err;
}