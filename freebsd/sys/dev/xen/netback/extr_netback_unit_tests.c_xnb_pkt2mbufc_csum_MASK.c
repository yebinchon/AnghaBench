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
struct xnb_pkt {int dummy; } ;
struct TYPE_3__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int CSUM_DATA_VALID ; 
 int CSUM_IP_CHECKED ; 
 int CSUM_IP_VALID ; 
 int CSUM_PSEUDO_HDR ; 
 int MINCLSIZE ; 
 size_t const FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  NETTXF_data_validated ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct xnb_pkt*,size_t const,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (struct xnb_pkt*,int /*<<< orphan*/ ) ; 
 TYPE_2__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen)
{
	const size_t size = MINCLSIZE - 1;
	struct xnb_pkt pkt;
	struct mbuf *pMbuf;

	FUNC3(&pkt, size, NETTXF_data_validated);

	pMbuf = FUNC4(&pkt, xnb_unit_pvt.ifp);
	FUNC1(FUNC0(pMbuf) >= size);
	FUNC1(pMbuf->m_pkthdr.csum_flags & CSUM_IP_CHECKED);
	FUNC1(pMbuf->m_pkthdr.csum_flags & CSUM_IP_VALID);
	FUNC1(pMbuf->m_pkthdr.csum_flags & CSUM_DATA_VALID);
	FUNC1(pMbuf->m_pkthdr.csum_flags & CSUM_PSEUDO_HDR);
	FUNC2(&pMbuf);
}