#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xnb_pkt {int dummy; } ;
struct netif_rx_request {int gref; int id; } ;
struct TYPE_6__ {size_t len; } ;
struct mbuf {size_t m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
struct TYPE_8__ {int offset; } ;
struct TYPE_10__ {int len; TYPE_3__ dest; } ;
struct TYPE_7__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct TYPE_9__ {TYPE_5__* gnttab; int /*<<< orphan*/  rxb; TYPE_2__ txf; int /*<<< orphan*/  rxf; } ;
typedef  int RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_FIRST_RESERVED ; 
 int MJUMPAGESIZE ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PAGE_SIZE ; 
 struct netif_rx_request* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct xnb_pkt*,int,int) ; 
 int FUNC4 (struct xnb_pkt*,struct mbuf*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen)
{
	struct xnb_pkt pkt;
	int nr_entries;
	int i, num_mbufs;
	size_t total_granted_size = 0;
	size_t size = MJUMPAGESIZE + 1;
	int free_slots = 60;
	RING_IDX start = 11;
	struct netif_rx_request *req;
	struct mbuf *mbuf, *m;

	mbuf = FUNC2(NULL, size, M_WAITOK, MT_DATA);
	mbuf->m_flags |= M_PKTHDR;
	mbuf->m_pkthdr.len = size;
	mbuf->m_len = size;

	FUNC3(mbuf, &pkt, start, free_slots);

	for (i = 0, m=mbuf; m != NULL; i++, m = m->m_next) {
		req = FUNC0(&xnb_unit_pvt.rxf,
		    xnb_unit_pvt.txf.req_prod_pvt);
		req->gref = i;
		req->id = 5;
	}
	num_mbufs = i;

	nr_entries = FUNC4(&pkt, mbuf, xnb_unit_pvt.gnttab,
			&xnb_unit_pvt.rxb, DOMID_FIRST_RESERVED);

	FUNC1(nr_entries >= num_mbufs);
	for (i = 0; i < nr_entries; i++) {
		int end_offset = xnb_unit_pvt.gnttab[i].len +
			xnb_unit_pvt.gnttab[i].dest.offset;
		FUNC1(end_offset <= PAGE_SIZE);
		total_granted_size += xnb_unit_pvt.gnttab[i].len;
	}
	FUNC1(total_granted_size == size);
}