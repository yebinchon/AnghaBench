#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * rdma_inflight; } ;
struct sdp_sock {scalar_t__ srcavail_cancel_mseq; scalar_t__ qp_active; TYPE_1__ tx_ring; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  wq; int /*<<< orphan*/  socket; } ;
struct rx_srcavail_state {int len; scalar_t__ mseq; int used; int /*<<< orphan*/  flags; TYPE_2__* umem; int /*<<< orphan*/  fmr; } ;
struct mbuf {int dummy; } ;
struct iovec {int /*<<< orphan*/  iov_base; int /*<<< orphan*/  iov_len; } ;
struct TYPE_5__ {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int EPIPE ; 
 int /*<<< orphan*/  RX_SA_ABORTED ; 
 struct rx_srcavail_state* FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  SOCK_REF_RDMA_RD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct socket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int FUNC7 (struct socket*,struct rx_srcavail_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,struct mbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sdp_sock* FUNC10 (struct socket*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,struct iovec*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct socket*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct socket*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct socket *sk, struct iovec *iov, struct mbuf *mb,
		unsigned long *used)
{
	struct sdp_sock *ssk = FUNC10(sk);
	struct rx_srcavail_state *rx_sa = FUNC0(mb);
	int got_srcavail_cancel;
	int rc = 0;
	int len = *used;
	int copied;

	FUNC5(ssk->socket, "preparing RDMA read."
		" len: 0x%x. buffer len: 0x%lx\n", len, iov->iov_len);

	FUNC14(sk, SOCK_REF_RDMA_RD);

	if (len > rx_sa->len) {
		FUNC13(sk, "len:0x%x > rx_sa->len: 0x%x\n", len, rx_sa->len);
		FUNC1(1);
		len = rx_sa->len;
	}

	rc = FUNC3(sk, iov->iov_base, len, &rx_sa->fmr, &rx_sa->umem);
	if (rc) {
		FUNC13(sk, "Error allocating fmr: %d\n", rc);
		goto err_alloc_fmr;
	}

	rc = FUNC7(sk, rx_sa);
	if (FUNC16(rc)) {
		FUNC13(sk, "ib_post_send failed with status %d.\n", rc);
		FUNC9(ssk->socket, -ECONNRESET);
		FUNC17(&ssk->wq);
		goto err_post_send;
	}

	FUNC8(sk, mb, "Finished posting(rc=%d), now to wait", rc);

	got_srcavail_cancel = ssk->srcavail_cancel_mseq > rx_sa->mseq;

	FUNC4(sk);

	FUNC12(ssk);

	FUNC8(sk, mb, "Finished waiting(rc=%d)", rc);
	if (!ssk->qp_active) {
		FUNC5(sk, "QP destroyed during RDMA read\n");
		rc = -EPIPE;
		goto err_post_send;
	}

	copied = rx_sa->umem->length;

	FUNC11(sk, iov, copied);
	rx_sa->used += copied;
	FUNC2(copied, &ssk->rcv_nxt);
	*used = copied;

	ssk->tx_ring.rdma_inflight = NULL;

err_post_send:
	FUNC6(sk, &rx_sa->fmr, &rx_sa->umem);

err_alloc_fmr:
	if (rc && ssk->qp_active) {
		FUNC13(sk, "Couldn't do RDMA - post sendsm\n");
		rx_sa->flags |= RX_SA_ABORTED;
	}

	FUNC15(sk, SOCK_REF_RDMA_RD);

	return rc;
}