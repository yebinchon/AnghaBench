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
typedef  int u_int32_t ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_flags; int m_data; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_len; } ;
struct ifnet {int /*<<< orphan*/  if_bpf; } ;
typedef  int /*<<< orphan*/  af1 ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  IFCOUNTER_IBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int M_LOOP ; 
 int M_MCAST ; 
 int NETISR_IP ; 
 int NETISR_IPV6 ; 
 struct ifnet* V_loif ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int,struct mbuf*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,struct mbuf*) ; 
 int FUNC11 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  vm_offset_t ; 

int
FUNC14(struct ifnet *ifp, struct mbuf *m, int af, int hlen)
{
	int isr;

	FUNC1(m);
	FUNC9(m);
	m->m_pkthdr.rcvif = ifp;

#ifdef MAC
	mac_ifnet_create_mbuf(ifp, m);
#endif

	/*
	 * Let BPF see incoming packet in the following manner:
	 *  - Emulated packet loopback for a simplex interface
	 *    (net/if_ethersubr.c)
	 *	-> passes it to ifp's BPF
	 *  - IPv4/v6 multicast packet loopback (netinet(6)/ip(6)_output.c)
	 *	-> not passes it to any BPF
	 *  - Normal packet loopback from myself to myself (net/if_loop.c)
	 *	-> passes to lo0's BPF (even in case of IPv6, where ifp!=lo0)
	 */
	if (hlen > 0) {
		if (FUNC5(ifp->if_bpf)) {
			FUNC3(ifp->if_bpf, m);
		}
	} else {
		if (FUNC5(V_loif->if_bpf)) {
			if ((m->m_flags & M_MCAST) == 0 || V_loif == ifp) {
				/* XXX beware sizeof(af) != 4 */
				u_int32_t af1 = af;

				/*
				 * We need to prepend the address family.
				 */
				FUNC4(V_loif->if_bpf, &af1, sizeof(af1), m);
			}
		}
	}

	/* Strip away media header */
	if (hlen > 0) {
		FUNC7(m, hlen);
#ifndef __NO_STRICT_ALIGNMENT
		/*
		 * Some archs do not like unaligned data, so
		 * we move data down in the first mbuf.
		 */
		if (FUNC11(m, vm_offset_t) & 3) {
			FUNC0(hlen >= 3, ("if_simloop: hlen too small"));
			FUNC2(m->m_data,
			    (char *)(FUNC11(m, vm_offset_t)
				- (FUNC11(m, vm_offset_t) & 3)),
			    m->m_len);
			m->m_data -= (FUNC11(m,vm_offset_t) & 3);
		}
#endif
	}

	/* Deliver to upper layer protocol */
	switch (af) {
#ifdef INET
	case AF_INET:
		isr = NETISR_IP;
		break;
#endif
#ifdef INET6
	case AF_INET6:
		m->m_flags |= M_LOOP;
		isr = NETISR_IPV6;
		break;
#endif
	default:
		FUNC13("if_simloop: can't handle af=%d\n", af);
		FUNC8(m);
		return (EAFNOSUPPORT);
	}
	FUNC6(ifp, IFCOUNTER_IPACKETS, 1);
	FUNC6(ifp, IFCOUNTER_IBYTES, m->m_pkthdr.len);
	FUNC12(isr, m);	/* mbuf is free'd on failure. */
	return (0);
}