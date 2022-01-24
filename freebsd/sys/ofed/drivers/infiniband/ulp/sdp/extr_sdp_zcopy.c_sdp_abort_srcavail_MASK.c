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
struct tx_srcavail_state {int /*<<< orphan*/  umem; int /*<<< orphan*/  fmr; } ;
struct socket {int dummy; } ;
struct sdp_sock {int /*<<< orphan*/  tx_sa_lock; struct tx_srcavail_state* tx_sa; int /*<<< orphan*/  srcavail_cancel_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sdp_sock* FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct socket *sk)
{
	struct sdp_sock *ssk = FUNC3(sk);
	struct tx_srcavail_state *tx_sa = ssk->tx_sa;
	unsigned long flags;

	if (!tx_sa)
		return;

	FUNC0(&ssk->srcavail_cancel_work);
	FUNC1();

	FUNC4(&ssk->tx_sa_lock, flags);

	FUNC2(sk, &tx_sa->fmr, &tx_sa->umem);

	ssk->tx_sa = NULL;

	FUNC5(&ssk->tx_sa_lock, flags);
}