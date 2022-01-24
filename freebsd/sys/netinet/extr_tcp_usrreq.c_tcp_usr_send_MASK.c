#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_char ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct tcpcb {scalar_t__ t_state; int /*<<< orphan*/  t_flags; TYPE_1__* t_fb; scalar_t__ snd_una; scalar_t__ snd_up; void* snd_wnd; } ;
struct socket {int /*<<< orphan*/  so_snd; } ;
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_4__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct mbuf {scalar_t__ m_len; } ;
struct TYPE_7__ {int /*<<< orphan*/  inc_flags; } ;
struct inpcb {int inp_vflag; int inp_flags; scalar_t__ inp_lport; TYPE_3__ inp_inc; TYPE_2__* inp_socket; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; } ;
struct TYPE_5__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EAFNOSUPPORT ; 
 int ECONNRESET ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int IN6P_IPV6_V6ONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INC_ISIPV6 ; 
 int INP_DROPPED ; 
 int INP_IPV4 ; 
 int INP_IPV6 ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC9 (struct epoch_tracker) ; 
 int PRUS_EOF ; 
 int PRUS_MORETOCOME ; 
 int PRUS_NOTREADY ; 
 int PRUS_OOB ; 
 int /*<<< orphan*/  PRU_SEND ; 
 int /*<<< orphan*/  PRU_SENDOOB ; 
 int /*<<< orphan*/  PRU_SEND_EOF ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TCPDEBUG0 ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ TCPS_SYN_SENT ; 
 int /*<<< orphan*/  FUNC14 (struct tcpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TCP_LOG_USERSEND ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TF_FASTOPEN ; 
 int /*<<< orphan*/  TF_FORCEDATA ; 
 int /*<<< orphan*/  TF_MORETOCOME ; 
 void* TTCP_CLIENT_SND_WND ; 
 int /*<<< orphan*/  debug__user ; 
 int /*<<< orphan*/  FUNC16 (struct sockaddr_in*,struct sockaddr_in6*) ; 
 struct tcpcb* FUNC17 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC18 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,struct mbuf*,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct socket*) ; 
 struct inpcb* FUNC27 (struct socket*) ; 
 int FUNC28 (struct tcpcb*) ; 
 int FUNC29 (struct tcpcb*) ; 
 int FUNC30 (struct tcpcb*,struct sockaddr*,struct thread*) ; 
 int FUNC31 (struct tcpcb*,struct sockaddr*,struct thread*) ; 
 int /*<<< orphan*/  FUNC32 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC33 (struct tcpcb*,int) ; 
 int /*<<< orphan*/  FUNC34 (struct tcpcb*) ; 

__attribute__((used)) static int
FUNC35(struct socket *so, int flags, struct mbuf *m,
    struct sockaddr *nam, struct mbuf *control, struct thread *td)
{
	struct epoch_tracker et;
	int error = 0;
	struct inpcb *inp;
	struct tcpcb *tp = NULL;
#ifdef INET
#ifdef INET6
	struct sockaddr_in sin;
#endif
	struct sockaddr_in *sinp;
#endif
#ifdef INET6
	int isipv6;
#endif
	u_int8_t incflagsav;
	u_char vflagsav;
	bool restoreflags;
	TCPDEBUG0;

	/*
	 * We require the pcbinfo "read lock" if we will close the socket
	 * as part of this call.
	 */
	if (flags & PRUS_EOF)
		FUNC8(et);
	inp = FUNC27(so);
	FUNC6(inp != NULL, ("tcp_usr_send: inp == NULL"));
	FUNC2(inp);
	vflagsav = inp->inp_vflag;
	incflagsav = inp->inp_inc.inc_flags;
	restoreflags = false;
	if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
		if (control)
			FUNC18(control);
		/*
		 * In case of PRUS_NOTREADY, tcp_usr_ready() is responsible
		 * for freeing memory.
		 */
		if (m && (flags & PRUS_NOTREADY) == 0)
			FUNC18(m);
		error = ECONNRESET;
		goto out;
	}
	tp = FUNC17(inp);
	FUNC12();
	if (nam != NULL && tp->t_state < TCPS_SYN_SENT) {
		switch (nam->sa_family) {
#ifdef INET
		case AF_INET:
			sinp = (struct sockaddr_in *)nam;
			if (sinp->sin_len != sizeof(struct sockaddr_in)) {
				if (m)
					m_freem(m);
				error = EINVAL;
				goto out;
			}
			if ((inp->inp_vflag & INP_IPV6) != 0) {
				if (m)
					m_freem(m);
				error = EAFNOSUPPORT;
				goto out;
			}
			if (IN_MULTICAST(ntohl(sinp->sin_addr.s_addr))) {
				if (m)
					m_freem(m);
				error = EAFNOSUPPORT;
				goto out;
			}
			if ((error = prison_remote_ip4(td->td_ucred,
			    &sinp->sin_addr))) {
				if (m)
					m_freem(m);
				goto out;
			}
#ifdef INET6
			isipv6 = 0;
#endif
			break;
#endif /* INET */
#ifdef INET6
		case AF_INET6:
		{
			struct sockaddr_in6 *sin6;

			sin6 = (struct sockaddr_in6 *)nam;
			if (sin6->sin6_len != sizeof(*sin6)) {
				if (m)
					m_freem(m);
				error = EINVAL;
				goto out;
			}
			if (IN6_IS_ADDR_MULTICAST(&sin6->sin6_addr)) {
				if (m)
					m_freem(m);
				error = EAFNOSUPPORT;
				goto out;
			}
			if (IN6_IS_ADDR_V4MAPPED(&sin6->sin6_addr)) {
#ifdef INET
				if ((inp->inp_flags & IN6P_IPV6_V6ONLY) != 0) {
					error = EINVAL;
					if (m)
						m_freem(m);
					goto out;
				}
				if ((inp->inp_vflag & INP_IPV4) == 0) {
					error = EAFNOSUPPORT;
					if (m)
						m_freem(m);
					goto out;
				}
				restoreflags = true;
				inp->inp_vflag &= ~INP_IPV6;
				sinp = &sin;
				in6_sin6_2_sin(sinp, sin6);
				if (IN_MULTICAST(
				    ntohl(sinp->sin_addr.s_addr))) {
					error = EAFNOSUPPORT;
					if (m)
						m_freem(m);
					goto out;
				}
				if ((error = prison_remote_ip4(td->td_ucred,
				    &sinp->sin_addr))) {
					if (m)
						m_freem(m);
					goto out;
				}
				isipv6 = 0;
#else /* !INET */
				error = EAFNOSUPPORT;
				if (m)
					m_freem(m);
				goto out;
#endif /* INET */
			} else {
				if ((inp->inp_vflag & INP_IPV6) == 0) {
					if (m)
						m_freem(m);
					error = EAFNOSUPPORT;
					goto out;
				}
				restoreflags = true;
				inp->inp_vflag &= ~INP_IPV4;
				inp->inp_inc.inc_flags |= INC_ISIPV6;
				if ((error = prison_remote_ip6(td->td_ucred,
				    &sin6->sin6_addr))) {
					if (m)
						m_freem(m);
					goto out;
				}
				isipv6 = 1;
			}
			break;
		}
#endif /* INET6 */
		default:
			if (m)
				FUNC18(m);
			error = EAFNOSUPPORT;
			goto out;
		}
	}
	if (control) {
		/* TCP doesn't do control messages (rights, creds, etc) */
		if (control->m_len) {
			FUNC18(control);
			if (m)
				FUNC18(m);
			error = EINVAL;
			goto out;
		}
		FUNC18(control);	/* empty control, just free it */
	}
	if (!(flags & PRUS_OOB)) {
		FUNC22(&so->so_snd, m, flags);
		if (nam && tp->t_state < TCPS_SYN_SENT) {
			/*
			 * Do implied connect if not yet connected,
			 * initialize window to default value, and
			 * initialize maxseg using peer's cached MSS.
			 */
#ifdef INET6
			if (isipv6)
				error = tcp6_connect(tp, nam, td);
#endif /* INET6 */
#if defined(INET6) && defined(INET)
			else
#endif
#ifdef INET
				error = tcp_connect(tp,
				    (struct sockaddr *)sinp, td);
#endif
			/*
			 * The bind operation in tcp_connect succeeded. We
			 * no longer want to restore the flags if later
			 * operations fail.
			 */
			if (error == 0 || inp->inp_lport != 0)
				restoreflags = false;

			if (error)
				goto out;
			if (FUNC5(tp->t_flags))
				FUNC32(tp);
			else {
				tp->snd_wnd = TTCP_CLIENT_SND_WND;
				FUNC33(tp, -1);
			}
		}
		if (flags & PRUS_EOF) {
			/*
			 * Close the send side of the connection after
			 * the data is sent.
			 */
			FUNC7();
			FUNC26(so);
			FUNC34(tp);
		}
		if (!(inp->inp_flags & INP_DROPPED) &&
		    !(flags & PRUS_NOTREADY)) {
			if (flags & PRUS_MORETOCOME)
				tp->t_flags |= TF_MORETOCOME;
			error = tp->t_fb->tfb_tcp_output(tp);
			if (flags & PRUS_MORETOCOME)
				tp->t_flags &= ~TF_MORETOCOME;
		}
	} else {
		/*
		 * XXXRW: PRUS_EOF not implemented with PRUS_OOB?
		 */
		FUNC10(&so->so_snd);
		if (FUNC25(&so->so_snd) < -512) {
			FUNC11(&so->so_snd);
			FUNC18(m);
			error = ENOBUFS;
			goto out;
		}
		/*
		 * According to RFC961 (Assigned Protocols),
		 * the urgent pointer points to the last octet
		 * of urgent data.  We continue, however,
		 * to consider it to indicate the first octet
		 * of data past the urgent section.
		 * Otherwise, snd_up should be one lower.
		 */
		FUNC23(&so->so_snd, m, flags);
		FUNC11(&so->so_snd);
		if (nam && tp->t_state < TCPS_SYN_SENT) {
			/*
			 * Do implied connect if not yet connected,
			 * initialize window to default value, and
			 * initialize maxseg using peer's cached MSS.
			 */

			/*
			 * Not going to contemplate SYN|URG
			 */
			if (FUNC5(tp->t_flags))
				tp->t_flags &= ~TF_FASTOPEN;
#ifdef INET6
			if (isipv6)
				error = tcp6_connect(tp, nam, td);
#endif /* INET6 */
#if defined(INET6) && defined(INET)
			else
#endif
#ifdef INET
				error = tcp_connect(tp,
				    (struct sockaddr *)sinp, td);
#endif
			/*
			 * The bind operation in tcp_connect succeeded. We
			 * no longer want to restore the flags if later
			 * operations fail.
			 */
			if (error == 0 || inp->inp_lport != 0)
				restoreflags = false;

			if (error)
				goto out;
			tp->snd_wnd = TTCP_CLIENT_SND_WND;
			FUNC33(tp, -1);
		}
		tp->snd_up = tp->snd_una + FUNC24(&so->so_snd);
		if (!(flags & PRUS_NOTREADY)) {
			tp->t_flags |= TF_FORCEDATA;
			error = tp->t_fb->tfb_tcp_output(tp);
			tp->t_flags &= ~TF_FORCEDATA;
		}
	}
	FUNC14(tp, NULL,
	    &inp->inp_socket->so_rcv,
	    &inp->inp_socket->so_snd,
	    TCP_LOG_USERSEND, error,
	    0, NULL, false);
out:
	/*
	 * If the request was unsuccessful and we changed flags,
	 * restore the original flags.
	 */
	if (error != 0 && restoreflags) {
		inp->inp_vflag = vflagsav;
		inp->inp_inc.inc_flags = incflagsav;
	}
	FUNC13((flags & PRUS_OOB) ? PRU_SENDOOB :
		  ((flags & PRUS_EOF) ? PRU_SEND_EOF : PRU_SEND));
	FUNC15(debug__user, tp, (flags & PRUS_OOB) ? PRU_SENDOOB :
		   ((flags & PRUS_EOF) ? PRU_SEND_EOF : PRU_SEND));
	FUNC3(inp);
	if (flags & PRUS_EOF)
		FUNC9(et);
	return (error);
}