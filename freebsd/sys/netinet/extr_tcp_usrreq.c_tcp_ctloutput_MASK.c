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
struct tcpcb {scalar_t__ t_state; scalar_t__ t_maxseg; int t_flags; struct tcp_function_block* t_fb; int /*<<< orphan*/  t_inpcb; } ;
struct tcp_function_set {char* function_set_name; int /*<<< orphan*/  pcbcnt; } ;
struct tcp_function_block {int (* tfb_tcp_handoff_ok ) (struct tcpcb*) ;int tfb_flags; int (* tfb_tcp_fb_init ) (struct tcpcb*) ;int (* tfb_tcp_ctloutput ) (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*) ;int /*<<< orphan*/  tfb_refcnt; int /*<<< orphan*/  tfb_tcp_block_name; int /*<<< orphan*/  (* tfb_tcp_fb_fini ) (struct tcpcb*,int /*<<< orphan*/ ) ;} ;
struct sockopt {scalar_t__ sopt_level; int /*<<< orphan*/  sopt_name; int /*<<< orphan*/  sopt_dir; } ;
struct socket {int dummy; } ;
struct ip6_pktopts {scalar_t__ ip6po_minmtu; } ;
struct TYPE_2__ {int inc_flags; } ;
struct inpcb {int inp_vflag; int inp_flags; struct ip6_pktopts* in6p_outputopts; TYPE_1__ inp_inc; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  HPTS_REMOVE_ALL ; 
 int INC_IPV6MINMTU ; 
 int INC_ISIPV6 ; 
 int INP_DROPPED ; 
 int INP_IPV6PROTO ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 scalar_t__ IP6PO_MINMTU_ALL ; 
 scalar_t__ IPPROTO_IPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  IPV6_USE_MIN_MTU ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SOPT_GET ; 
 int /*<<< orphan*/  SOPT_SET ; 
 scalar_t__ TCP6_MSS ; 
 scalar_t__ TCPS_CLOSED ; 
 scalar_t__ TCPS_SYN_SENT ; 
 int /*<<< orphan*/  TCP_FUNCTION_BLK ; 
 int TCP_FUNCTION_NAME_LEN_MAX ; 
 int TCP_FUNC_BEING_REMOVED ; 
 int TF_TOE ; 
 struct tcp_function_block* FUNC4 (struct tcp_function_set*) ; 
 struct tcpcb* FUNC5 (struct inpcb*) ; 
 int FUNC6 (struct socket*,struct sockopt*) ; 
 int FUNC7 (struct socket*,struct sockopt*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int FUNC10 (struct sockopt*,struct tcp_function_set*,int,int) ; 
 int FUNC11 (struct sockopt*,struct tcp_function_set*,int) ; 
 struct inpcb* FUNC12 (struct socket*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC15 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct tcpcb*) ; 
 scalar_t__ FUNC17 (struct tcpcb*) ; 
 int FUNC18 (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct tcpcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC21(struct socket *so, struct sockopt *sopt)
{
	int	error;
	struct	inpcb *inp;
	struct	tcpcb *tp;
	struct tcp_function_block *blk;
	struct tcp_function_set fsn;

	error = 0;
	inp = FUNC12(so);
	FUNC3(inp != NULL, ("tcp_ctloutput: inp == NULL"));
	if (sopt->sopt_level != IPPROTO_TCP) {
#ifdef INET6
		if (inp->inp_vflag & INP_IPV6PROTO) {
			error = ip6_ctloutput(so, sopt);
			/*
			 * In case of the IPV6_USE_MIN_MTU socket option,
			 * the INC_IPV6MINMTU flag to announce a corresponding
			 * MSS during the initial handshake.
			 * If the TCP connection is not in the front states,
			 * just reduce the MSS being used.
			 * This avoids the sending of TCP segments which will
			 * be fragmented at the IPv6 layer.
			 */
			if ((error == 0) &&
			    (sopt->sopt_dir == SOPT_SET) &&
			    (sopt->sopt_level == IPPROTO_IPV6) &&
			    (sopt->sopt_name == IPV6_USE_MIN_MTU)) {
				INP_WLOCK(inp);
				if ((inp->inp_flags &
				    (INP_TIMEWAIT | INP_DROPPED))) {
					INP_WUNLOCK(inp);
					return (ECONNRESET);
				}
				inp->inp_inc.inc_flags |= INC_IPV6MINMTU;
				tp = intotcpcb(inp);
				if ((tp->t_state >= TCPS_SYN_SENT) &&
				    (inp->inp_inc.inc_flags & INC_ISIPV6)) {
					struct ip6_pktopts *opt;

					opt = inp->in6p_outputopts;
					if ((opt != NULL) &&
					    (opt->ip6po_minmtu ==
					    IP6PO_MINMTU_ALL)) {
						if (tp->t_maxseg > TCP6_MSS) {
							tp->t_maxseg = TCP6_MSS;
						}
					}
				}
				INP_WUNLOCK(inp);
			}
		}
#endif /* INET6 */
#if defined(INET6) && defined(INET)
		else
#endif
#ifdef INET
		{
			error = ip_ctloutput(so, sopt);
		}
#endif
		return (error);
	}
	FUNC0(inp);
	if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
		FUNC2(inp);
		return (ECONNRESET);
	}
	tp = FUNC5(inp);
	/*
	 * Protect the TCP option TCP_FUNCTION_BLK so
	 * that a sub-function can *never* overwrite this.
	 */
	if ((sopt->sopt_dir == SOPT_SET) && 
	    (sopt->sopt_name == TCP_FUNCTION_BLK)) {
		FUNC2(inp);
		error = FUNC10(sopt, &fsn, sizeof fsn,
		    sizeof fsn);
		if (error)
			return (error);
		FUNC1(inp);
		blk = FUNC4(&fsn);
		if (blk == NULL) {
			FUNC2(inp);
			return (ENOENT);
		}
		if (tp->t_fb == blk) {
			/* You already have this */
			FUNC8(&blk->tfb_refcnt);
			FUNC2(inp);
			return (0);
		}
		if (tp->t_state != TCPS_CLOSED) {
			/* 
			 * The user has advanced the state
			 * past the initial point, we may not
			 * be able to switch. 
			 */
			if (blk->tfb_tcp_handoff_ok != NULL) {
				/* 
				 * Does the stack provide a
				 * query mechanism, if so it may
				 * still be possible?
				 */
				error = (*blk->tfb_tcp_handoff_ok)(tp);
			} else
				error = EINVAL;
			if (error) {
				FUNC8(&blk->tfb_refcnt);
				FUNC2(inp);
				return(error);
			}
		}
		if (blk->tfb_flags & TCP_FUNC_BEING_REMOVED) {
			FUNC8(&blk->tfb_refcnt);
			FUNC2(inp);
			return (ENOENT);
		}
		/* 
		 * Release the old refcnt, the
		 * lookup acquired a ref on the
		 * new one already.
		 */
		if (tp->t_fb->tfb_tcp_fb_fini) {
			/* 
			 * Tell the stack to cleanup with 0 i.e.
			 * the tcb is not going away.
			 */
			(*tp->t_fb->tfb_tcp_fb_fini)(tp, 0);
		}
#ifdef TCPHPTS 
		/* Assure that we are not on any hpts */
		tcp_hpts_remove(tp->t_inpcb, HPTS_REMOVE_ALL);
#endif
		if (blk->tfb_tcp_fb_init) {
			error = (*blk->tfb_tcp_fb_init)(tp);
			if (error) {
				FUNC8(&blk->tfb_refcnt);
				if (tp->t_fb->tfb_tcp_fb_init) {
					if((*tp->t_fb->tfb_tcp_fb_init)(tp) != 0)  {
						/* Fall back failed, drop the connection */
						FUNC2(inp);
						FUNC9(so);
						return(error);
					}
				}
				goto err_out;
			}
		}
		FUNC8(&tp->t_fb->tfb_refcnt);
		tp->t_fb = blk;
#ifdef TCP_OFFLOAD
		if (tp->t_flags & TF_TOE) {
			tcp_offload_ctloutput(tp, sopt->sopt_dir,
			     sopt->sopt_name);
		}
#endif
err_out:
		FUNC2(inp);
		return (error);
	} else if ((sopt->sopt_dir == SOPT_GET) && 
	    (sopt->sopt_name == TCP_FUNCTION_BLK)) {
		FUNC13(fsn.function_set_name, tp->t_fb->tfb_tcp_block_name,
		    TCP_FUNCTION_NAME_LEN_MAX);
		fsn.function_set_name[TCP_FUNCTION_NAME_LEN_MAX - 1] = '\0';
		fsn.pcbcnt = tp->t_fb->tfb_refcnt;
		FUNC2(inp);
		error = FUNC11(sopt, &fsn, sizeof fsn);
		return (error);
	}
	/* Pass in the INP locked, called must unlock it */
	return (tp->t_fb->tfb_tcp_ctloutput(so, sopt, inp, tp));
}