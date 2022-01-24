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
typedef  scalar_t__ u32 ;
struct socket {int /*<<< orphan*/  sk_sleep; } ;
struct sdp_sock {int /*<<< orphan*/  tx_sa_lock; TYPE_1__* tx_sa; struct socket* socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  bytes_acked; scalar_t__ mseq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ *,char*,struct sdp_sock*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct sdp_sock *ssk, u32 mseq_ack,
		u32 bytes_completed)
{
	struct socket *sk = ssk->socket;
	unsigned long flags;

	FUNC2(sk, NULL, "RdmaRdCompl ssk=%p tx_sa=%p", ssk, ssk->tx_sa);
	FUNC1(sk, "RdmaRdCompl ssk=%p tx_sa=%p\n", ssk, ssk->tx_sa);

	FUNC3(&ssk->tx_sa_lock, flags);

	FUNC0(!ssk);

	if (!ssk->tx_sa) {
		FUNC1(sk, "Got RdmaRdCompl for aborted SrcAvail\n");
		goto out;
	}

	if (ssk->tx_sa->mseq > mseq_ack) {
		FUNC1(sk, "RdmaRdCompl arrived for old SrcAvail. "
			"SendSM mseq_ack: 0x%x, SrcAvail mseq: 0x%x\n",
			mseq_ack, ssk->tx_sa->mseq);
		goto out;
	}

	ssk->tx_sa->bytes_acked += bytes_completed;

	FUNC5(sk->sk_sleep);
	FUNC1(sk, "woke up sleepers\n");

out:
	FUNC4(&ssk->tx_sa_lock, flags);
	return;
}