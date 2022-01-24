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
typedef  int u_int ;
struct txpkts {int wr_type; int len16; int plen; int npkt; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct fw_eth_tx_pkts_wr {int dummy; } ;

/* Variables and functions */
 int EQ_ESIZE ; 
 int SGE_MAX_WR_NDESC ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct mbuf *m, struct mbuf *n, struct txpkts *txp, u_int available)
{
	u_int needed, nsegs1, nsegs2, l1, l2;

	if (FUNC0(m) || FUNC0(n))
		return (1);

	nsegs1 = FUNC2(m);
	nsegs2 = FUNC2(n);
	if (nsegs1 + nsegs2 == 2) {
		txp->wr_type = 1;
		l1 = l2 = FUNC5();
	} else {
		txp->wr_type = 0;
		l1 = FUNC4(nsegs1);
		l2 = FUNC4(nsegs2);
	}
	txp->len16 = FUNC1(sizeof(struct fw_eth_tx_pkts_wr), 16) + l1 + l2;
	needed = FUNC1(txp->len16, EQ_ESIZE / 16);
	if (needed > SGE_MAX_WR_NDESC || needed > available)
		return (1);

	txp->plen = m->m_pkthdr.len + n->m_pkthdr.len;
	if (txp->plen > 65535)
		return (1);

	txp->npkt = 2;
	FUNC3(m, l1);
	FUNC3(n, l2);

	return (0);
}