#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int16_t ;
struct thread {int dummy; } ;
struct sockopt {int sopt_valsize; int /*<<< orphan*/ * sopt_td; void* sopt_val; int /*<<< orphan*/  sopt_name; int /*<<< orphan*/  sopt_level; int /*<<< orphan*/  sopt_dir; } ;
struct socket {int /*<<< orphan*/  so_state; int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; } ;
struct sockaddr_l2cap {int l2cap_len; void* l2cap_bdaddr_type; scalar_t__ l2cap_cid; int /*<<< orphan*/  l2cap_bdaddr; void* l2cap_psm; void* l2cap_family; } ;
struct sockaddr {int dummy; } ;
struct rfcomm_frame_hdr {int dummy; } ;
typedef  TYPE_1__* ng_btsocket_rfcomm_session_p ;
typedef  int /*<<< orphan*/  mtu ;
typedef  int /*<<< orphan*/  l2sa ;
typedef  int /*<<< orphan*/ * bdaddr_p ;
struct TYPE_7__ {int /*<<< orphan*/  session_mtx; struct socket* l2so; int /*<<< orphan*/  state; scalar_t__ flags; scalar_t__ mtu; int /*<<< orphan*/  dlcs; int /*<<< orphan*/  outq; } ;

/* Variables and functions */
 void* AF_BLUETOOTH ; 
 void* BDADDR_BREDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  M_NETGRAPH_BTSOCKET_RFCOMM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NG_BTSOCKET_RFCOMM_SESSION_CLOSED ; 
 int /*<<< orphan*/  NG_BTSOCKET_RFCOMM_SESSION_CONNECTING ; 
 scalar_t__ NG_BTSOCKET_RFCOMM_SESSION_INITIATOR ; 
 int /*<<< orphan*/  NG_BTSOCKET_RFCOMM_SESSION_LISTENING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NG_L2CAP_PSM_RFCOMM ; 
 scalar_t__ RFCOMM_DEFAULT_MTU ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOL_L2CAP ; 
 int /*<<< orphan*/  SOPT_SET ; 
 int /*<<< orphan*/  SO_L2CAP_IMTU ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  SO_SND ; 
 int /*<<< orphan*/  SS_NBIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_sessions ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_sessions_mtx ; 
 int /*<<< orphan*/  ng_btsocket_rfcomm_upcall ; 
 int FUNC15 (struct socket*,struct sockaddr*,struct thread*) ; 
 int FUNC16 (struct socket*,struct sockaddr*,struct thread*) ; 
 int FUNC17 (struct socket*,int,struct thread*) ; 
 int FUNC18 (struct socket*,struct sockopt*) ; 
 int /*<<< orphan*/  FUNC19 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(ng_btsocket_rfcomm_session_p *sp,
		struct socket *l2so, bdaddr_p src, bdaddr_p dst,
		struct thread *td)
{
	ng_btsocket_rfcomm_session_p	s = NULL;
	struct sockaddr_l2cap		l2sa;
	struct sockopt			l2sopt;
	int				error;
	u_int16_t			mtu;

	FUNC10(&ng_btsocket_rfcomm_sessions_mtx, MA_OWNED);

	/* Allocate the RFCOMM session */
        s = FUNC9(sizeof(*s),
		M_NETGRAPH_BTSOCKET_RFCOMM, M_NOWAIT | M_ZERO);
        if (s == NULL)
                return (ENOMEM);

	/* Set defaults */
	s->mtu = RFCOMM_DEFAULT_MTU;
	s->flags = 0;
	s->state = NG_BTSOCKET_RFCOMM_SESSION_CLOSED;
	FUNC2(&s->outq, ifqmaxlen);

	/*
	 * XXX Mark session mutex as DUPOK to prevent "duplicated lock of 
	 * the same type" message. When accepting new L2CAP connection
	 * ng_btsocket_rfcomm_session_accept() holds both session mutexes 
	 * for "old" (accepting) session and "new" (created) session.
	 */

	FUNC12(&s->session_mtx, "btsocks_rfcomm_session_mtx", NULL,
		MTX_DEF|MTX_DUPOK);

	FUNC0(&s->dlcs);

	/* Prepare L2CAP socket */
	FUNC3(&l2so->so_rcv);
	FUNC20(l2so, SO_RCV, ng_btsocket_rfcomm_upcall, NULL);
	FUNC4(&l2so->so_rcv);
	FUNC3(&l2so->so_snd);
	FUNC20(l2so, SO_SND, ng_btsocket_rfcomm_upcall, NULL);
	FUNC4(&l2so->so_snd);
	l2so->so_state |= SS_NBIO;
	s->l2so = l2so;

	FUNC13(&s->session_mtx);

	/*
	 * "src" == NULL and "dst" == NULL means just create session.
	 * caller must do the rest
	 */

	if (src == NULL && dst == NULL)
		goto done;

	/*
	 * Set incoming MTU on L2CAP socket. It is RFCOMM session default MTU 
	 * plus 5 bytes: RFCOMM frame header, one extra byte for length and one
	 * extra byte for credits.
	 */

	mtu = s->mtu + sizeof(struct rfcomm_frame_hdr) + 1 + 1;

	l2sopt.sopt_dir = SOPT_SET;
	l2sopt.sopt_level = SOL_L2CAP;
	l2sopt.sopt_name = SO_L2CAP_IMTU;
	l2sopt.sopt_val = (void *) &mtu;
	l2sopt.sopt_valsize = sizeof(mtu);
	l2sopt.sopt_td = NULL;

	error = FUNC18(s->l2so, &l2sopt);
	if (error != 0)
		goto bad;

	/* Bind socket to "src" address */
	l2sa.l2cap_len = sizeof(l2sa);
	l2sa.l2cap_family = AF_BLUETOOTH;
	l2sa.l2cap_psm = (dst == NULL)? FUNC8(NG_L2CAP_PSM_RFCOMM) : 0;
	FUNC5(src, &l2sa.l2cap_bdaddr, sizeof(l2sa.l2cap_bdaddr));
	l2sa.l2cap_cid = 0;
	l2sa.l2cap_bdaddr_type = BDADDR_BREDR;

	error = FUNC15(s->l2so, (struct sockaddr *) &l2sa, td);
	if (error != 0)
		goto bad;

	/* If "dst" is not NULL then initiate connect(), otherwise listen() */
	if (dst == NULL) {
		s->flags = 0;
		s->state = NG_BTSOCKET_RFCOMM_SESSION_LISTENING;

		error = FUNC17(s->l2so, 10, td);
		if (error != 0)
			goto bad;
	} else {
		s->flags = NG_BTSOCKET_RFCOMM_SESSION_INITIATOR;
		s->state = NG_BTSOCKET_RFCOMM_SESSION_CONNECTING;

		l2sa.l2cap_len = sizeof(l2sa);   
		l2sa.l2cap_family = AF_BLUETOOTH;
		l2sa.l2cap_psm = FUNC8(NG_L2CAP_PSM_RFCOMM);
	        FUNC5(dst, &l2sa.l2cap_bdaddr, sizeof(l2sa.l2cap_bdaddr));
		l2sa.l2cap_cid = 0;
		l2sa.l2cap_bdaddr_type = BDADDR_BREDR;

		error = FUNC16(s->l2so, (struct sockaddr *) &l2sa, td);
		if (error != 0)
			goto bad;
	}

done:
	FUNC1(&ng_btsocket_rfcomm_sessions, s, next);
	*sp = s;

	FUNC14(&s->session_mtx);

	return (0);

bad:
	FUNC14(&s->session_mtx);

	/* Return L2CAP socket back to its original state */
	FUNC3(&l2so->so_rcv);
	FUNC19(s->l2so, SO_RCV);
	FUNC4(&l2so->so_rcv);
	FUNC3(&l2so->so_snd);
	FUNC19(s->l2so, SO_SND);
	FUNC4(&l2so->so_snd);
	l2so->so_state &= ~SS_NBIO;

	FUNC11(&s->session_mtx);
	FUNC6(s, sizeof(*s));
	FUNC7(s, M_NETGRAPH_BTSOCKET_RFCOMM);

	return (error);
}