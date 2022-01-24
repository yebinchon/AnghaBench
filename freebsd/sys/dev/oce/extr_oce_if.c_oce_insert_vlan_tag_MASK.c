#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  ether_vtag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {scalar_t__ qnqid; scalar_t__ pvid; } ;
typedef  TYPE_2__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int M_VLANTAG ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 struct mbuf* FUNC2 (struct mbuf*,scalar_t__) ; 

__attribute__((used)) static struct mbuf *
FUNC3(POCE_SOFTC sc, struct mbuf *m, boolean_t *complete)
{
	uint16_t vlan_tag = 0;

	if(!FUNC1(m))
		return NULL;

	/* Embed vlan tag in the packet if it is not part of it */
	if(m->m_flags & M_VLANTAG) {
		vlan_tag = FUNC0(m->m_pkthdr.ether_vtag);
		m->m_flags &= ~M_VLANTAG;
	}

	/* if UMC, ignore vlan tag insertion and instead insert pvid */
	if(sc->pvid) {
		if(!vlan_tag)
			vlan_tag = sc->pvid;
		if (complete)
			*complete = FALSE;
	}

	if(vlan_tag) {
		m = FUNC2(m, vlan_tag);
	}

	if(sc->qnqid) {
		m = FUNC2(m, sc->qnqid);

		if (complete)
			*complete = FALSE;
	}
	return m;
}