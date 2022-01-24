#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct mbuf* sb_sndptr; struct mbuf* sb_mb; } ;
struct socket {TYPE_1__ so_snd; } ;
struct sdp_sock {scalar_t__ recv_request_head; scalar_t__ state; int flags; int nagle_last_unacked; int /*<<< orphan*/  nagle_timer; struct socket* socket; scalar_t__ recv_request; scalar_t__ recv_bytes; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  id; } ;
struct mbuf {struct mbuf* m_next; struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SDP_HEAD_SIZE ; 
 int SDP_MIN_TX_CREDITS ; 
 int SDP_NEEDFIN ; 
 int SDP_TX_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ TCPS_ESTABLISHED ; 
 scalar_t__ TCPS_FIN_WAIT_2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sdp_sock*) ; 
 scalar_t__ FUNC5 (struct sdp_sock*) ; 
 int /*<<< orphan*/  post_send_credits ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct mbuf*) ; 
 struct mbuf* FUNC8 (struct socket*,scalar_t__,int) ; 
 struct mbuf* FUNC9 (struct socket*,int) ; 
 struct mbuf* FUNC10 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*,char*) ; 
 scalar_t__ FUNC13 (struct sdp_sock*,struct mbuf*) ; 
 int /*<<< orphan*/  sdp_nagle_timeout ; 
 int /*<<< orphan*/  FUNC14 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sdp_sock*,struct mbuf*) ; 
 int FUNC16 (struct sdp_sock*) ; 
 scalar_t__ FUNC17 (struct sdp_sock*,int) ; 
 int /*<<< orphan*/  send_miss_no_credits ; 
 int FUNC18 (struct sdp_sock*) ; 
 scalar_t__ FUNC19 (int) ; 

void
FUNC20(struct sdp_sock *ssk, int wait)
{
	struct mbuf *mb;
	int post_count = 0;
	struct socket *sk;
	int low;

	sk = ssk->socket;
	if (FUNC19(!ssk->id)) {
		if (sk->so_snd.sb_sndptr) {
			FUNC12(ssk->socket,
				"Send on socket without cmid ECONNRESET.\n");
			FUNC14(ssk, ECONNRESET);
		}
		return;
	}
again:
	if (FUNC16(ssk) < SDP_TX_SIZE / 2)
		FUNC17(ssk,  1);

	if (ssk->recv_request &&
	    FUNC6(ssk->rx_ring) >= ssk->recv_request_head &&
	    FUNC18(ssk) >= SDP_MIN_TX_CREDITS &&
	    FUNC16(ssk)) {
		mb = FUNC8(sk,
		    ssk->recv_bytes - SDP_HEAD_SIZE, wait);
		if (mb == NULL)
			goto allocfail;
		ssk->recv_request = 0;
		FUNC15(ssk, mb);
		post_count++;
	}

	if (FUNC18(ssk) <= SDP_MIN_TX_CREDITS &&
	    FUNC16(ssk) && sk->so_snd.sb_sndptr &&
	    FUNC13(ssk, sk->so_snd.sb_sndptr)) {
		FUNC1(send_miss_no_credits);
	}

	while (FUNC18(ssk) > SDP_MIN_TX_CREDITS &&
	    FUNC16(ssk) && (mb = sk->so_snd.sb_sndptr) &&
	    FUNC13(ssk, mb)) {
		struct mbuf *n;

		FUNC2(&sk->so_snd);
		sk->so_snd.sb_sndptr = mb->m_nextpkt;
		sk->so_snd.sb_mb = mb->m_nextpkt;
		mb->m_nextpkt = NULL;
		FUNC0(&sk->so_snd);
		for (n = mb; n != NULL; n = n->m_next)
			FUNC7(&sk->so_snd, n);
		FUNC3(&sk->so_snd);
		FUNC15(ssk, mb);
		post_count++;
	}

	if (FUNC5(ssk) && ssk->state >= TCPS_ESTABLISHED &&
	    ssk->state < TCPS_FIN_WAIT_2) {
		mb = FUNC9(ssk->socket, wait);
		if (mb == NULL)
			goto allocfail;
		FUNC15(ssk, mb);

		FUNC1(post_send_credits);
		post_count++;
	}

	/* send DisConn if needed
	 * Do not send DisConn if there is only 1 credit. Compliance with CA4-82
	 * If one credit is available, an implementation shall only send SDP
	 * messages that provide additional credits and also do not contain ULP
	 * payload. */
	if ((ssk->flags & SDP_NEEDFIN) && !sk->so_snd.sb_sndptr &&
	    FUNC18(ssk) > 1) {
		mb = FUNC10(sk, wait);
		if (mb == NULL)
			goto allocfail;
		ssk->flags &= ~SDP_NEEDFIN;
		FUNC15(ssk, mb);
		post_count++;
	}
	low = (FUNC16(ssk) <= SDP_MIN_TX_CREDITS);
	if (post_count || low) {
		if (low)
			FUNC11(ssk);
		if (FUNC17(ssk, low))
			goto again;
	}
	return;

allocfail:
	ssk->nagle_last_unacked = -1;
	FUNC4(&ssk->nagle_timer, 1, sdp_nagle_timeout, ssk);
	return;
}