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
struct socket {int /*<<< orphan*/  sk_sleep; } ;
struct TYPE_4__ {TYPE_1__* rdma_inflight; } ;
struct sdp_sock {struct socket* socket; TYPE_2__ tx_ring; int /*<<< orphan*/  qp_active; } ;
struct TYPE_3__ {int /*<<< orphan*/  busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,long*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC10(struct sdp_sock *ssk)
{
	struct socket *sk = ssk->socket;
	long timeo = HZ * 5; /* Timeout for for RDMA read */
	FUNC0(wait);

	FUNC6(sk, "Sleep till RDMA wr finished.\n");
	while (1) {
		FUNC5(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);

		if (!ssk->tx_ring.rdma_inflight->busy) {
			FUNC6(sk, "got rdma cqe\n");
			break;
		}

		if (!ssk->qp_active) {
			FUNC6(sk, "QP destroyed\n");
			break;
		}

		if (!timeo) {
			FUNC8(sk, "Panic: Timed out waiting for RDMA read\n");
			FUNC1(1);
			break;
		}

		FUNC4(ssk);

		FUNC7(sk, NULL, "Going to sleep");
		FUNC9(sk, &timeo, 
			!ssk->tx_ring.rdma_inflight->busy);
		FUNC7(sk, NULL, "Woke up");
		FUNC6(ssk->socket, "woke up sleepers\n");

		FUNC3(ssk);
	}

	FUNC2(sk->sk_sleep, &wait);

	FUNC6(sk, "Finished waiting\n");
}