#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  csum_data; int /*<<< orphan*/  csum_flags; int /*<<< orphan*/  flowid; int /*<<< orphan*/  ether_vtag; int /*<<< orphan*/  rcvif; int /*<<< orphan*/  len; } ;
struct mbuf {int m_data; scalar_t__ m_len; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
struct if_rxsd {int /*<<< orphan*/ * ifsd_cl; } ;
typedef  int /*<<< orphan*/  iflib_rxq_t ;
typedef  TYPE_2__* if_rxd_info_t ;
struct TYPE_9__ {scalar_t__ irf_len; } ;
struct TYPE_8__ {int iri_nfrags; int /*<<< orphan*/  iri_csum_data; int /*<<< orphan*/  iri_csum_flags; int /*<<< orphan*/  iri_rsstype; int /*<<< orphan*/  iri_flowid; int /*<<< orphan*/  iri_vtag; int /*<<< orphan*/  iri_flags; int /*<<< orphan*/  iri_ifp; int /*<<< orphan*/  iri_len; TYPE_3__* iri_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFLIB_RX_COPY_THRESH ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  MHLEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int PFIL_PASS ; 
 int PFIL_REALLOCED ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,struct if_rxsd*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int,struct if_rxsd*,int*,TYPE_2__*) ; 

__attribute__((used)) static struct mbuf *
FUNC7(iflib_rxq_t rxq, if_rxd_info_t ri)
{
	struct if_rxsd sd;
	struct mbuf *m;
	int pf_rv;

	/* should I merge this back in now that the two paths are basically duplicated? */
	if (ri->iri_nfrags == 1 &&
	    ri->iri_frags[0].irf_len <= FUNC1(IFLIB_RX_COPY_THRESH, MHLEN)) {
		m = FUNC6(rxq, &ri->iri_frags[0], false, &sd,
		    &pf_rv, ri);
		if (pf_rv != PFIL_PASS && pf_rv != PFIL_REALLOCED)
			return (m);
		if (pf_rv == PFIL_PASS) {
			FUNC4(m, M_NOWAIT, MT_DATA, M_PKTHDR);
#ifndef __NO_STRICT_ALIGNMENT
			if (!FUNC0(m))
				m->m_data += 2;
#endif
			FUNC5(m->m_data, *sd.ifsd_cl, ri->iri_len);
			m->m_len = ri->iri_frags[0].irf_len;
		}
	} else {
		m = FUNC3(rxq, ri, &sd, &pf_rv);
		if (pf_rv != PFIL_PASS && pf_rv != PFIL_REALLOCED)
			return (m);
	}
	m->m_pkthdr.len = ri->iri_len;
	m->m_pkthdr.rcvif = ri->iri_ifp;
	m->m_flags |= ri->iri_flags;
	m->m_pkthdr.ether_vtag = ri->iri_vtag;
	m->m_pkthdr.flowid = ri->iri_flowid;
	FUNC2(m, ri->iri_rsstype);
	m->m_pkthdr.csum_flags = ri->iri_csum_flags;
	m->m_pkthdr.csum_data = ri->iri_csum_data;
	return (m);
}