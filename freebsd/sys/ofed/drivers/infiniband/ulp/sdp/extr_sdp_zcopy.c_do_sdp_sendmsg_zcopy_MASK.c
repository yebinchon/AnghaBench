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
struct tx_srcavail_state {int abort_flags; int /*<<< orphan*/  umem; int /*<<< orphan*/  fmr; int /*<<< orphan*/  bytes_acked; } ;
struct socket {int dummy; } ;
struct sdp_sock {int /*<<< orphan*/  tx_sa_lock; int /*<<< orphan*/ * tx_sa; int /*<<< orphan*/  srcavail_cancel_work; scalar_t__ qp_active; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  enum tx_sa_flag { ____Placeholder_tx_sa_flag } tx_sa_flag ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TX_SA_ERROR ; 
 int TX_SA_SENDSM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct socket*,struct tx_srcavail_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 struct sdp_sock* FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,struct iovec*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sdp_sock*,long*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (struct sdp_sock*) ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (struct socket*,long*) ; 
 int /*<<< orphan*/  zcopy_tx_error ; 

__attribute__((used)) static int FUNC18(struct socket *sk, struct tx_srcavail_state *tx_sa,
		struct iovec *iov, long *timeo)
{
	struct sdp_sock *ssk = FUNC9(sk);
	int rc = 0;
	unsigned long lock_flags;

	rc = FUNC2(sk, iov->iov_base, iov->iov_len,
			&tx_sa->fmr, &tx_sa->umem);
	if (rc) {
		FUNC12(sk, "Error allocating fmr: %d\n", rc);
		goto err_alloc_fmr;
	}

	if (FUNC15(ssk) == 0) {
		rc = FUNC17(sk, timeo);
		if (rc) {
			FUNC12(sk, "Couldn't get send buffer\n");
			goto err_no_tx_slots;
		}
	}

	rc = FUNC6(sk, tx_sa);
	if (rc) {
		FUNC3(sk, "Error posting SrcAvail\n");
		goto err_abort_send;
	}

	rc = FUNC11(ssk, timeo, 0);
	if (FUNC16(rc)) {
		enum tx_sa_flag f = tx_sa->abort_flags;

		if (f & TX_SA_SENDSM) {
			FUNC4(sk, "Got SendSM. use SEND verb.\n");
		} else if (f & TX_SA_ERROR) {
			FUNC4(sk, "SrcAvail error completion\n");
			FUNC8(sk);
			FUNC0(zcopy_tx_error);
		} else if (ssk->qp_active) {
			FUNC7(sk);

			/* Wait for RdmaRdCompl/SendSM to
			 * finish the transaction */
			*timeo = 2 * HZ;
			FUNC4(sk, "Waiting for SendSM\n");
			FUNC11(ssk, timeo, 1);
			FUNC4(sk, "finished waiting\n");

			FUNC1(&ssk->srcavail_cancel_work);
		} else {
			FUNC4(sk, "QP was destroyed while waiting\n");
		}
	} else {
		FUNC4(sk, "got RdmaRdCompl\n");
	}

	FUNC13(&ssk->tx_sa_lock, lock_flags);
	ssk->tx_sa = NULL;
	FUNC14(&ssk->tx_sa_lock, lock_flags);

err_abort_send:
	FUNC10(sk, iov, tx_sa->bytes_acked);

err_no_tx_slots:
	FUNC5(sk, &tx_sa->fmr, &tx_sa->umem);

err_alloc_fmr:
	return rc;	
}