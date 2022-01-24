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
typedef  int u_short ;
typedef  scalar_t__ u_int32_t ;
struct tuntap_softc {int tun_flags; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; struct sockaddr const* sa_data; } ;
struct route {int dummy; } ;
struct mbuf {scalar_t__* m_data; } ;
struct ifnet {int if_flags; int (* if_transmit ) (struct ifnet*,struct mbuf*) ;int /*<<< orphan*/  if_bpf; struct tuntap_softc* if_softc; } ;
typedef  int /*<<< orphan*/  af ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_UNSPEC ; 
 int EAFNOSUPPORT ; 
 int EHOSTDOWN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_UP ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,char*,...) ; 
 int TUN_IFHEAD ; 
 int TUN_LMODE ; 
 int /*<<< orphan*/  FUNC2 (struct tuntap_softc*) ; 
 int TUN_READY ; 
 int /*<<< orphan*/  FUNC3 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr const*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int,struct mbuf*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*) ; 
 int FUNC10 (struct ifnet*,struct mbuf*) ; 
 int FUNC11 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC12(struct ifnet *ifp, struct mbuf *m0, const struct sockaddr *dst,
    struct route *ro)
{
	struct tuntap_softc *tp = ifp->if_softc;
	u_short cached_tun_flags;
	int error;
	u_int32_t af;

	FUNC1 (ifp, "tunoutput\n");

#ifdef MAC
	error = mac_ifnet_check_transmit(ifp, m0);
	if (error) {
		m_freem(m0);
		return (error);
	}
#endif

	/* Could be unlocked read? */
	FUNC2(tp);
	cached_tun_flags = tp->tun_flags;
	FUNC3(tp);
	if ((cached_tun_flags & TUN_READY) != TUN_READY) {
		FUNC1 (ifp, "not ready 0%o\n", tp->tun_flags);
		FUNC9 (m0);
		return (EHOSTDOWN);
	}

	if ((ifp->if_flags & IFF_UP) != IFF_UP) {
		FUNC9 (m0);
		return (EHOSTDOWN);
	}

	/* BPF writes need to be handled specially. */
	if (dst->sa_family == AF_UNSPEC)
		FUNC4(dst->sa_data, &af, sizeof(af));
	else
		af = dst->sa_family;

	if (FUNC6(ifp->if_bpf))
		FUNC5(ifp->if_bpf, &af, sizeof(af), m0);

	/* prepend sockaddr? this may abort if the mbuf allocation fails */
	if (cached_tun_flags & TUN_LMODE) {
		/* allocate space for sockaddr */
		FUNC0(m0, dst->sa_len, M_NOWAIT);

		/* if allocation failed drop packet */
		if (m0 == NULL) {
			FUNC8(ifp, IFCOUNTER_IQDROPS, 1);
			FUNC8(ifp, IFCOUNTER_OERRORS, 1);
			return (ENOBUFS);
		} else {
			FUNC4(dst, m0->m_data, dst->sa_len);
		}
	}

	if (cached_tun_flags & TUN_IFHEAD) {
		/* Prepend the address family */
		FUNC0(m0, 4, M_NOWAIT);

		/* if allocation failed drop packet */
		if (m0 == NULL) {
			FUNC8(ifp, IFCOUNTER_IQDROPS, 1);
			FUNC8(ifp, IFCOUNTER_OERRORS, 1);
			return (ENOBUFS);
		} else
			*(u_int32_t *)m0->m_data = FUNC7(af);
	} else {
#ifdef INET
		if (af != AF_INET)
#endif
		{
			FUNC9(m0);
			return (EAFNOSUPPORT);
		}
	}

	error = (ifp->if_transmit)(ifp, m0);
	if (error)
		return (ENOBUFS);
	FUNC8(ifp, IFCOUNTER_OPACKETS, 1);
	return (0);
}