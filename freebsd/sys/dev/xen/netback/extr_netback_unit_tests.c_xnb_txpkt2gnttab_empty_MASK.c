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
struct xnb_pkt {scalar_t__ size; scalar_t__ list_len; } ;
struct mbuf {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  req_cons; } ;
struct TYPE_4__ {TYPE_2__ txb; int /*<<< orphan*/  gnttab; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_FIRST_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf**) ; 
 struct mbuf* FUNC2 (struct xnb_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xnb_pkt*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xnb_pkt*,struct mbuf*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen)
{
	int n_entries;
	struct xnb_pkt pkt;
	struct mbuf *pMbuf;
	pkt.list_len = 0;

	/* must call xnb_ring2pkt just to intialize pkt */
	FUNC3(&pkt, &xnb_unit_pvt.txb, xnb_unit_pvt.txb.req_cons);
	pkt.size = 0;
	pMbuf = FUNC2(&pkt, xnb_unit_pvt.ifp);
	n_entries = FUNC4(&pkt, pMbuf, xnb_unit_pvt.gnttab,
	    &xnb_unit_pvt.txb, DOMID_FIRST_RESERVED);
	FUNC0(n_entries == 0);
	FUNC1(&pMbuf);
}