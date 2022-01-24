#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct nm_os_gen_arg {scalar_t__ len; int /*<<< orphan*/  ring_nr; int /*<<< orphan*/  addr; struct mbuf* m; struct ifnet* ifp; } ;
struct TYPE_5__ {struct ifnet* rcvif; int /*<<< orphan*/  flowid; scalar_t__ len; } ;
struct TYPE_4__ {scalar_t__ ext_size; int /*<<< orphan*/  ext_buf; } ;
struct mbuf {TYPE_2__ m_pkthdr; scalar_t__ m_len; int /*<<< orphan*/  m_flags; TYPE_1__ m_ext; int /*<<< orphan*/  m_data; } ;
struct ifnet {int /*<<< orphan*/  if_vnet; } ;
struct TYPE_6__ {int (* if_transmit ) (struct ifnet*,struct mbuf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  M_HASHTYPE_OPAQUE ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 TYPE_3__* FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct ifnet*,struct mbuf*) ; 

int
FUNC11(struct nm_os_gen_arg *a)
{
	int ret;
	u_int len = a->len;
	struct ifnet *ifp = a->ifp;
	struct mbuf *m = a->m;

#if __FreeBSD_version < 1100000
	/*
	 * Old FreeBSD versions. The mbuf has a cluster attached,
	 * we need to copy from the cluster to the netmap buffer.
	 */
	if (FUNC2(m) != 1) {
		FUNC7("invalid refcnt %d for %p", FUNC2(m), m);
		FUNC9("in generic_xmit_frame");
	}
	if (m->m_ext.ext_size < len) {
		FUNC8(2, "size %d < len %d", m->m_ext.ext_size, len);
		len = m->m_ext.ext_size;
	}
	FUNC6(a->addr, m->m_data, len);
#else  /* __FreeBSD_version >= 1100000 */
	/* New FreeBSD versions. Link the external storage to
	 * the netmap buffer, so that no copy is necessary. */
	m->m_ext.ext_buf = m->m_data = a->addr;
	m->m_ext.ext_size = len;
#endif /* __FreeBSD_version >= 1100000 */

	m->m_flags |= M_PKTHDR;
	m->m_len = m->m_pkthdr.len = len;

	/* mbuf refcnt is not contended, no need to use atomic
	 * (a memory barrier is enough). */
	FUNC5(m, 2);
	FUNC3(m, M_HASHTYPE_OPAQUE);
	m->m_pkthdr.flowid = a->ring_nr;
	m->m_pkthdr.rcvif = ifp; /* used for tx notification */
	FUNC1(ifp->if_vnet);
	ret = FUNC4(ifp)->if_transmit(ifp, m);
	FUNC0();
	return ret ? -1 : 0;
}