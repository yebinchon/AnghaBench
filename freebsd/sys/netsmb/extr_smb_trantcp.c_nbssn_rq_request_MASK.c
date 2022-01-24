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
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_int8_t ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct nbpcb {int /*<<< orphan*/  nbp_vc; int /*<<< orphan*/  nbp_state; int /*<<< orphan*/  nbp_flags; int /*<<< orphan*/  nbp_tso; int /*<<< orphan*/  nbp_timo; int /*<<< orphan*/  nbp_laddr; int /*<<< orphan*/  nbp_paddr; } ;
struct mdchain {int /*<<< orphan*/  mb_top; } ;
struct mbuf {int dummy; } ;
struct mbchain {int /*<<< orphan*/  mb_top; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int ECONNABORTED ; 
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  MB_MSYSTEM ; 
 int /*<<< orphan*/  M_NBDATA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  NBF_CONNECTED ; 
 int /*<<< orphan*/  NBST_RETARGET ; 
 int /*<<< orphan*/  NBST_RQSENT ; 
 int /*<<< orphan*/  NBST_SESSION ; 
 scalar_t__ NB_SSN_POSRESP ; 
 int /*<<< orphan*/  NB_SSN_REQUEST ; 
 scalar_t__ NB_SSN_RTGRESP ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mdchain*,int /*<<< orphan*/ ) ; 
 struct mdchain* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdchain*) ; 
 int /*<<< orphan*/  FUNC5 (struct mdchain*) ; 
 scalar_t__ FUNC6 (struct mdchain*) ; 
 int FUNC7 (struct mdchain*) ; 
 int /*<<< orphan*/  FUNC8 (struct mdchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mdchain*) ; 
 int /*<<< orphan*/  FUNC10 (struct mdchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mdchain*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mdchain*,struct mbuf*) ; 
 int FUNC13 (struct nbpcb*,struct sockaddr_in*,struct thread*) ; 
 int /*<<< orphan*/  FUNC14 (struct mdchain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC17 (struct nbpcb*,struct mbuf**,int*,scalar_t__*,struct thread*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,struct thread*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC20(struct nbpcb *nbp, struct thread *td)
{
	struct mbchain *mbp;
	struct mdchain *mdp;
	struct mbuf *m0;
	struct timeval tv;
	struct sockaddr_in sin;
	u_short port;
	u_int8_t rpcode;
	int error, rplen;

	mbp = FUNC3(sizeof(struct mbchain), M_NBDATA, M_WAITOK);
	mdp = FUNC3(sizeof(struct mbchain), M_NBDATA, M_WAITOK);
	error = FUNC7(mbp);
	if (error) {
		FUNC2(mbp, M_NBDATA);
		FUNC2(mdp, M_NBDATA);
		return error;
	}
	FUNC8(mbp, 0);
	FUNC14(mbp, nbp->nbp_paddr);
	FUNC14(mbp, nbp->nbp_laddr);
	FUNC15(mbp->mb_top, NB_SSN_REQUEST, FUNC6(mbp) - 4);
	error = FUNC16(nbp->nbp_tso, mbp->mb_top, 0, td);
	if (!error) {
		nbp->nbp_state = NBST_RQSENT;
	}
	FUNC4(mbp);
	FUNC5(mbp);
	FUNC2(mbp, M_NBDATA);
	if (error) {
		FUNC2(mdp, M_NBDATA);
		return error;
	}
	FUNC1(&tv, &nbp->nbp_timo);
	error = FUNC18(nbp->nbp_tso, POLLIN, &tv, td);
	if (error == EWOULDBLOCK) {	/* Timeout */
		FUNC0("initial request timeout\n");
		FUNC2(mdp, M_NBDATA);
		return ETIMEDOUT;
	}
	if (error) {			/* restart or interrupt */
		FUNC2(mdp, M_NBDATA);
		return error;
	}
	error = FUNC17(nbp, &m0, &rplen, &rpcode, td);
	if (error) {
		FUNC0("recv() error %d\n", error);
		FUNC2(mdp, M_NBDATA);
		return error;
	}
	/*
	 * Process NETBIOS reply
	 */
	if (m0)
		FUNC12(mdp, m0);
	error = 0;
	do {
		if (rpcode == NB_SSN_POSRESP) {
			nbp->nbp_state = NBST_SESSION;
			nbp->nbp_flags |= NBF_CONNECTED;
			break;
		}
		if (rpcode != NB_SSN_RTGRESP) {
			error = ECONNABORTED;
			break;
		}
		if (rplen != 6) {
			error = ECONNABORTED;
			break;
		}
		FUNC10(mdp, (caddr_t)&sin.sin_addr, 4, MB_MSYSTEM);
		FUNC11(mdp, &port);
		sin.sin_port = port;
		nbp->nbp_state = NBST_RETARGET;
		FUNC19(nbp->nbp_vc, td);
		error = FUNC13(nbp, &sin, td);
		if (!error)
			error = FUNC20(nbp, td);
		if (error) {
			FUNC19(nbp->nbp_vc, td);
			break;
		}
	} while(0);
	if (m0)
		FUNC9(mdp);
	FUNC2(mdp, M_NBDATA);
	return error;
}