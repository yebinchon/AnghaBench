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
struct tx_srcavail_state {int /*<<< orphan*/  abort_flags; } ;
struct socket {int dummy; } ;
struct sdp_sock {int /*<<< orphan*/  socket; scalar_t__ rx_sa; } ;
struct kiocb {int dummy; } ;
struct iovec {size_t iov_len; scalar_t__ iov_base; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long SDP_SRCAVAIL_ADV_TIMEOUT ; 
 int /*<<< orphan*/  SOCK_REF_ZCOPY ; 
 int FUNC1 (struct socket*,struct tx_srcavail_state*,struct iovec*,long*) ; 
 int /*<<< orphan*/  FUNC2 (struct tx_srcavail_state*) ; 
 struct tx_srcavail_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int /*<<< orphan*/ *,char*,...) ; 
 struct sdp_sock* FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,char*) ; 
 size_t sdp_zcopy_thresh ; 
 int /*<<< orphan*/  sendmsg_zcopy_segment ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tx_srcavail_state*) ; 

int FUNC11(struct kiocb *iocb, struct socket *sk, struct iovec *iov)
{
	struct sdp_sock *ssk = FUNC6(sk);
	int rc = 0;
	long timeo;
	struct tx_srcavail_state *tx_sa;
	int offset;
	size_t bytes_to_copy = 0;
	int copied = 0;

	FUNC4(sk, "Sending iov: %p, iov_len: 0x%lx\n",
			iov->iov_base, iov->iov_len);
	FUNC5(sk, NULL, "sdp_sendmsg_zcopy start");
	if (ssk->rx_sa) {
		FUNC4(sk, "Deadlock prevent: crossing SrcAvail\n");
		return 0;
	}

	FUNC8(ssk->socket, SOCK_REF_ZCOPY);

	FUNC0(sendmsg_zcopy_segment);

	timeo = SDP_SRCAVAIL_ADV_TIMEOUT ;

	/* Ok commence sending. */
	offset = (unsigned long)iov->iov_base & (PAGE_SIZE - 1);

	tx_sa = FUNC3(sizeof(struct tx_srcavail_state), GFP_KERNEL);
	if (!tx_sa) {
		FUNC7(sk, "Error allocating zcopy context\n");
		rc = -EAGAIN; /* Buffer too big - fallback to bcopy */
		goto err_alloc_tx_sa;
	}

	bytes_to_copy = iov->iov_len;
	do {
		FUNC10(tx_sa);

		rc = FUNC1(sk, tx_sa, iov, &timeo);

		if (iov->iov_len && iov->iov_len < sdp_zcopy_thresh) {
			FUNC4(sk, "0x%lx bytes left, switching to bcopy\n",
				iov->iov_len);
			break;
		}
	} while (!rc && iov->iov_len > 0 && !tx_sa->abort_flags);

	FUNC2(tx_sa);
err_alloc_tx_sa:
	copied = bytes_to_copy - iov->iov_len;

	FUNC5(sk, NULL, "sdp_sendmsg_zcopy end rc: %d copied: %d", rc, copied);

	FUNC9(ssk->socket, SOCK_REF_ZCOPY);

	if (rc < 0 && rc != -EAGAIN && rc != -ETIME)
		return rc;

	return copied;
}