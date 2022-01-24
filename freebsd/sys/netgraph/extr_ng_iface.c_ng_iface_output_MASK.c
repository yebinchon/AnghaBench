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
typedef  scalar_t__ uint32_t ;
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_data; } ;
struct route {int dummy; } ;
struct mbuf {scalar_t__ m_data; } ;
struct ifnet {int if_flags; int if_drv_flags; int (* if_transmit ) (struct ifnet*,struct mbuf*) ;int /*<<< orphan*/  if_snd; } ;
typedef  scalar_t__ sa_family_t ;
typedef  int /*<<< orphan*/  af ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  IFCOUNTER_OQDROPS ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGM_IFACE_COOKIE ; 
 int /*<<< orphan*/  V_ng_iface_max_nest ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ifnet*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,struct mbuf*,scalar_t__) ; 
 int FUNC7 (struct ifnet*,struct mbuf*,scalar_t__) ; 
 int FUNC8 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC9(struct ifnet *ifp, struct mbuf *m,
	const struct sockaddr *dst, struct route *ro)
{
	uint32_t af;
	int error;

	/* Check interface flags */
	if (!((ifp->if_flags & IFF_UP) &&
	    (ifp->if_drv_flags & IFF_DRV_RUNNING))) {
		FUNC5(m);
		return (ENETDOWN);
	}

	/* Protect from deadly infinite recursion. */
	error = FUNC4(ifp, m, NGM_IFACE_COOKIE,
	    V_ng_iface_max_nest);
	if (error) {
		FUNC5(m);
		return (error);
	}

	/* BPF writes need to be handled specially. */
	if (dst->sa_family == AF_UNSPEC)
		FUNC2(dst->sa_data, &af, sizeof(af));
	else
		af = dst->sa_family;

	/* Berkeley packet filter */
	FUNC6(ifp, m, af);

	if (FUNC0(&ifp->if_snd)) {
		FUNC1(m, sizeof(sa_family_t), M_NOWAIT);
		if (m == NULL) {
			FUNC3(ifp, IFCOUNTER_OQDROPS, 1);
			return (ENOBUFS);
		}
		*(sa_family_t *)m->m_data = af;
		error = (ifp->if_transmit)(ifp, m);
	} else
		error = FUNC7(ifp, m, af);

	return (error);
}