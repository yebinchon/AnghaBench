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
struct udphdr {int dummy; } ;
struct udpcb {int /*<<< orphan*/  u_tun_ctx; int /*<<< orphan*/  (* u_tun_func ) (struct mbuf*,int,struct inpcb*,struct sockaddr*,int /*<<< orphan*/ ) ;} ;
struct socket {int so_options; int /*<<< orphan*/  so_rcv; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {struct mbuf* m_next; } ;
struct inpcb {int inp_flags; int inp_vflag; int inp_flags2; struct socket* inp_socket; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int INP_CONTROLOPTS ; 
 int INP_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int INP_ORIGDSTADDR ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct mbuf*,struct inpcb*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPV6_ORIGDSTADDR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int SO_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inpcb*) ; 
 int FUNC9 (struct inpcb*) ; 
 struct udpcb* FUNC10 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct inpcb*,struct mbuf*,struct mbuf**) ; 
 int /*<<< orphan*/  ipv6 ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mbuf*) ; 
 scalar_t__ FUNC14 (struct inpcb*,struct mbuf*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct sockaddr*,struct mbuf*,struct mbuf*) ; 
 struct mbuf* FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*) ; 
 int /*<<< orphan*/  FUNC18 (struct mbuf*,int,struct inpcb*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udps_fullsock ; 

__attribute__((used)) static int
FUNC19(struct inpcb *inp, struct mbuf *n, int off,
    struct sockaddr_in6 *fromsa)
{
	struct socket *so;
	struct mbuf *opts = NULL, *tmp_opts;
	struct udpcb *up;

	FUNC0(inp);

	/*
	 * Engage the tunneling protocol.
	 */
	up = FUNC10(inp);
	if (up->u_tun_func != NULL) {
		FUNC8(inp);
		FUNC2(inp);
		(*up->u_tun_func)(n, off, inp, (struct sockaddr *)&fromsa[0],
		    up->u_tun_ctx);
		FUNC1(inp);
		return (FUNC9(inp));
	}
#if defined(IPSEC) || defined(IPSEC_SUPPORT)
	/* Check AH/ESP integrity. */
	if (IPSEC_ENABLED(ipv6)) {
		if (IPSEC_CHECK_POLICY(ipv6, n, inp) != 0) {
			m_freem(n);
			return (0);
		}
	}
#endif /* IPSEC */
#ifdef MAC
	if (mac_inpcb_check_deliver(inp, n) != 0) {
		m_freem(n);
		return (0);
	}
#endif
	opts = NULL;
	if (inp->inp_flags & INP_CONTROLOPTS ||
	    inp->inp_socket->so_options & SO_TIMESTAMP)
		FUNC11(inp, n, &opts);
	if ((inp->inp_vflag & INP_IPV6) && (inp->inp_flags2 & INP_ORIGDSTADDR)) {
		tmp_opts = FUNC16((caddr_t)&fromsa[1],
                        sizeof(struct sockaddr_in6), IPV6_ORIGDSTADDR, IPPROTO_IPV6);
                if (tmp_opts) {
                        if (opts) {
                                tmp_opts->m_next = opts;
                                opts = tmp_opts;
                        } else
                                opts = tmp_opts;
                }

	}
	FUNC12(n, off + sizeof(struct udphdr));

	so = inp->inp_socket;
	FUNC5(&so->so_rcv);
	if (FUNC15(&so->so_rcv, (struct sockaddr *)&fromsa[0], n,
	    opts) == 0) {
		FUNC6(&so->so_rcv);
		FUNC13(n);
		if (opts)
			FUNC13(opts);
		FUNC7(udps_fullsock);
	} else
		FUNC17(so);
	return (0);
}