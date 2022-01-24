#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_short ;
struct ucred {scalar_t__ cr_uid; } ;
struct tcptw {int tw_so_options; } ;
struct socket {int so_options; scalar_t__ so_type; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; void* sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
struct inpcbinfo {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct inpcb {int inp_flags; int inp_flags2; int inp_vflag; scalar_t__ inp_lport; void* in6p_laddr; TYPE_2__ inp_laddr; struct ucred* inp_cred; TYPE_1__ inp_faddr; void* in6p_faddr; struct inpcbinfo* inp_pcbinfo; struct socket* inp_socket; } ;
struct in6_ifaddr {int ia6_flags; } ;
struct ifaddr {int dummy; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EACCES ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EAFNOSUPPORT ; 
 int EAGAIN ; 
 int EINVAL ; 
 int IN6P_IPV6_V6ONLY ; 
 int IN6_IFF_ANYCAST ; 
 int IN6_IFF_DETACHED ; 
 int IN6_IFF_NOTREADY ; 
 scalar_t__ FUNC1 (void**) ; 
 scalar_t__ FUNC2 (void**) ; 
 scalar_t__ INADDR_ANY ; 
 int INPLOOKUP_WILDCARD ; 
 int INP_BINDANY ; 
 int INP_BINDMULTI ; 
 int /*<<< orphan*/  FUNC3 (struct inpcbinfo*) ; 
 int INP_IPV6PROTO ; 
 int INP_REUSEPORT ; 
 int INP_REUSEPORT_LB ; 
 int INP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC6 (struct epoch_tracker) ; 
 int /*<<< orphan*/  PRIV_NETINET_RESERVEDPORT ; 
 int /*<<< orphan*/  PRIV_NETINET_REUSEPORT ; 
 scalar_t__ SOCK_STREAM ; 
 int SO_REUSEADDR ; 
 int SO_REUSEPORT ; 
 int SO_REUSEPORT_LB ; 
 int /*<<< orphan*/  V_in6_ifaddrhead ; 
 int /*<<< orphan*/  V_ip6_use_defzone ; 
 scalar_t__ V_ipport_reservedhigh ; 
 scalar_t__ V_ipport_reservedlow ; 
 struct ifaddr* FUNC7 (struct sockaddr*) ; 
 struct inpcb* FUNC8 (struct inpcbinfo*,void**,scalar_t__,int,struct ucred*) ; 
 int FUNC9 (void**,struct inpcb*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in*,struct sockaddr_in6*) ; 
 void* in6addr_any ; 
 int /*<<< orphan*/  FUNC11 (struct inpcb*,struct inpcb*) ; 
 scalar_t__ FUNC12 (struct inpcb*) ; 
 struct inpcb* FUNC13 (struct inpcbinfo*,int /*<<< orphan*/ ,scalar_t__,int,struct ucred*) ; 
 int FUNC14 (struct inpcb*) ; 
 struct tcptw* FUNC15 (struct inpcb*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int FUNC18 (struct ucred*,void**,int) ; 
 scalar_t__ FUNC19 (struct ucred*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 

int
FUNC21(struct inpcb *inp, struct sockaddr *nam,
    struct ucred *cred)
{
	struct socket *so = inp->inp_socket;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)NULL;
	struct inpcbinfo *pcbinfo = inp->inp_pcbinfo;
	u_short	lport = 0;
	int error, lookupflags = 0;
	int reuseport = (so->so_options & SO_REUSEPORT);

	/*
	 * XXX: Maybe we could let SO_REUSEPORT_LB set SO_REUSEPORT bit here
	 * so that we don't have to add to the (already messy) code below.
	 */
	int reuseport_lb = (so->so_options & SO_REUSEPORT_LB);

	FUNC4(inp);
	FUNC3(pcbinfo);

	if (FUNC0(&V_in6_ifaddrhead))	/* XXX broken! */
		return (EADDRNOTAVAIL);
	if (inp->inp_lport || !FUNC2(&inp->in6p_laddr))
		return (EINVAL);
	if ((so->so_options & (SO_REUSEADDR|SO_REUSEPORT|SO_REUSEPORT_LB)) == 0)
		lookupflags = INPLOOKUP_WILDCARD;
	if (nam == NULL) {
		if ((error = FUNC18(cred, &inp->in6p_laddr,
		    ((inp->inp_flags & IN6P_IPV6_V6ONLY) != 0))) != 0)
			return (error);
	} else {
		sin6 = (struct sockaddr_in6 *)nam;
		if (nam->sa_len != sizeof(*sin6))
			return (EINVAL);
		/*
		 * family check.
		 */
		if (nam->sa_family != AF_INET6)
			return (EAFNOSUPPORT);

		if ((error = FUNC20(sin6, V_ip6_use_defzone)) != 0)
			return(error);

		if ((error = FUNC18(cred, &sin6->sin6_addr,
		    ((inp->inp_flags & IN6P_IPV6_V6ONLY) != 0))) != 0)
			return (error);

		lport = sin6->sin6_port;
		if (FUNC1(&sin6->sin6_addr)) {
			/*
			 * Treat SO_REUSEADDR as SO_REUSEPORT for multicast;
			 * allow compepte duplication of binding if
			 * SO_REUSEPORT is set, or if SO_REUSEADDR is set
			 * and a multicast address is bound on both
			 * new and duplicated sockets.
			 */
			if ((so->so_options & (SO_REUSEADDR|SO_REUSEPORT)) != 0)
				reuseport = SO_REUSEADDR|SO_REUSEPORT;
			/*
			 * XXX: How to deal with SO_REUSEPORT_LB here?
			 * Treat same as SO_REUSEPORT for now.
			 */
			if ((so->so_options &
			    (SO_REUSEADDR|SO_REUSEPORT_LB)) != 0)
				reuseport_lb = SO_REUSEADDR|SO_REUSEPORT_LB;
		} else if (!FUNC2(&sin6->sin6_addr)) {
			struct epoch_tracker et;
			struct ifaddr *ifa;

			sin6->sin6_port = 0;		/* yech... */
			FUNC5(et);
			if ((ifa = FUNC7((struct sockaddr *)sin6)) ==
			    NULL &&
			    (inp->inp_flags & INP_BINDANY) == 0) {
				FUNC6(et);
				return (EADDRNOTAVAIL);
			}

			/*
			 * XXX: bind to an anycast address might accidentally
			 * cause sending a packet with anycast source address.
			 * We should allow to bind to a deprecated address, since
			 * the application dares to use it.
			 */
			if (ifa != NULL &&
			    ((struct in6_ifaddr *)ifa)->ia6_flags &
			    (IN6_IFF_ANYCAST|IN6_IFF_NOTREADY|IN6_IFF_DETACHED)) {
				FUNC6(et);
				return (EADDRNOTAVAIL);
			}
			FUNC6(et);
		}
		if (lport) {
			struct inpcb *t;
			struct tcptw *tw;

			/* GROSS */
			if (FUNC17(lport) <= V_ipport_reservedhigh &&
			    FUNC17(lport) >= V_ipport_reservedlow &&
			    FUNC19(cred, PRIV_NETINET_RESERVEDPORT))
				return (EACCES);
			if (!FUNC1(&sin6->sin6_addr) &&
			    FUNC19(inp->inp_cred, PRIV_NETINET_REUSEPORT) != 0) {
				t = FUNC8(pcbinfo,
				    &sin6->sin6_addr, lport,
				    INPLOOKUP_WILDCARD, cred);
				if (t &&
				    ((inp->inp_flags2 & INP_BINDMULTI) == 0) &&
				    ((t->inp_flags & INP_TIMEWAIT) == 0) &&
				    (so->so_type != SOCK_STREAM ||
				     FUNC2(&t->in6p_faddr)) &&
				    (!FUNC2(&sin6->sin6_addr) ||
				     !FUNC2(&t->in6p_laddr) ||
				     (t->inp_flags2 & INP_REUSEPORT) ||
				     (t->inp_flags2 & INP_REUSEPORT_LB) == 0) &&
				    (inp->inp_cred->cr_uid !=
				     t->inp_cred->cr_uid))
					return (EADDRINUSE);

				/*
				 * If the socket is a BINDMULTI socket, then
				 * the credentials need to match and the
				 * original socket also has to have been bound
				 * with BINDMULTI.
				 */
				if (t && (! FUNC11(inp, t)))
					return (EADDRINUSE);

#ifdef INET
				if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0 &&
				    IN6_IS_ADDR_UNSPECIFIED(&sin6->sin6_addr)) {
					struct sockaddr_in sin;

					in6_sin6_2_sin(&sin, sin6);
					t = in_pcblookup_local(pcbinfo,
					    sin.sin_addr, lport,
					    INPLOOKUP_WILDCARD, cred);
					if (t &&
					    ((inp->inp_flags2 & INP_BINDMULTI) == 0) &&
					    ((t->inp_flags &
					      INP_TIMEWAIT) == 0) &&
					    (so->so_type != SOCK_STREAM ||
					     ntohl(t->inp_faddr.s_addr) ==
					      INADDR_ANY) &&
					    (inp->inp_cred->cr_uid !=
					     t->inp_cred->cr_uid))
						return (EADDRINUSE);

					if (t && (! in_pcbbind_check_bindmulti(inp, t)))
						return (EADDRINUSE);
				}
#endif
			}
			t = FUNC8(pcbinfo, &sin6->sin6_addr,
			    lport, lookupflags, cred);
			if (t && (t->inp_flags & INP_TIMEWAIT)) {
				/*
				 * XXXRW: If an incpb has had its timewait
				 * state recycled, we treat the address as
				 * being in use (for now).  This is better
				 * than a panic, but not desirable.
				 */
				tw = FUNC15(t);
				if (tw == NULL ||
				    ((reuseport & tw->tw_so_options) == 0 &&
					 (reuseport_lb & tw->tw_so_options) == 0))
					return (EADDRINUSE);
			} else if (t && (reuseport & FUNC14(t)) == 0 &&
					   (reuseport_lb & FUNC14(t)) == 0) {
				return (EADDRINUSE);
			}
#ifdef INET
			if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0 &&
			    IN6_IS_ADDR_UNSPECIFIED(&sin6->sin6_addr)) {
				struct sockaddr_in sin;

				in6_sin6_2_sin(&sin, sin6);
				t = in_pcblookup_local(pcbinfo, sin.sin_addr,
				   lport, lookupflags, cred);
				if (t && t->inp_flags & INP_TIMEWAIT) {
					tw = intotw(t);
					if (tw == NULL)
						return (EADDRINUSE);
					if ((reuseport & tw->tw_so_options) == 0
					    && (reuseport_lb & tw->tw_so_options) == 0
					    && (ntohl(t->inp_laddr.s_addr) !=
					        INADDR_ANY || ((inp->inp_vflag &
					                INP_IPV6PROTO) ==
					            (t->inp_vflag & INP_IPV6PROTO))))
						return (EADDRINUSE);
				} else if (t &&
				    (reuseport & inp_so_options(t)) == 0 &&
				    (reuseport_lb & inp_so_options(t)) == 0 &&
				    (ntohl(t->inp_laddr.s_addr) != INADDR_ANY ||
				        (t->inp_vflag & INP_IPV6PROTO) != 0)) {
					return (EADDRINUSE);
				}
			}
#endif
		}
		inp->in6p_laddr = sin6->sin6_addr;
	}
	if (lport == 0) {
		if ((error = FUNC9(&inp->in6p_laddr, inp, cred)) != 0) {
			/* Undo an address bind that may have occurred. */
			inp->in6p_laddr = in6addr_any;
			return (error);
		}
	} else {
		inp->inp_lport = lport;
		if (FUNC12(inp) != 0) {
			inp->in6p_laddr = in6addr_any;
			inp->inp_lport = 0;
			return (EAGAIN);
		}
	}
	return (0);
}