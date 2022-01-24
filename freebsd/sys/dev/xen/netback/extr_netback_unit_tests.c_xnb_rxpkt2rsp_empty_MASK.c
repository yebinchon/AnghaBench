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
struct xnb_pkt {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  rxs_backup ;
typedef  int /*<<< orphan*/  rxb_backup ;
typedef  int /*<<< orphan*/  netif_rx_sring_t ;
typedef  int /*<<< orphan*/  netif_rx_back_ring_t ;
struct TYPE_2__ {int /*<<< orphan*/ * rxs; int /*<<< orphan*/  rxb; int /*<<< orphan*/  gnttab; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_FIRST_RESERVED ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,struct xnb_pkt*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct xnb_pkt*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xnb_pkt*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_1__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC7(char *buffer, size_t buflen)
{
	struct xnb_pkt pkt;
	int nr_entries;
	int nr_reqs;
	int free_slots = 60;
	netif_rx_back_ring_t rxb_backup = xnb_unit_pvt.rxb;
	netif_rx_sring_t rxs_backup = *xnb_unit_pvt.rxs;
	struct mbuf *mbuf;

	mbuf = FUNC1(M_WAITOK, MT_DATA);

	FUNC4(mbuf, &pkt, 0, free_slots);
	nr_entries = FUNC5(&pkt, mbuf, xnb_unit_pvt.gnttab,
			&xnb_unit_pvt.rxb, DOMID_FIRST_RESERVED);

	nr_reqs = FUNC6(&pkt, xnb_unit_pvt.gnttab, nr_entries,
	    &xnb_unit_pvt.rxb);
	FUNC0(nr_reqs == 0);
	FUNC0(
	    FUNC2(&rxb_backup, &xnb_unit_pvt.rxb, sizeof(rxb_backup)) == 0);
	FUNC0(
	    FUNC2(&rxs_backup, xnb_unit_pvt.rxs, sizeof(rxs_backup)) == 0);

	FUNC3(&mbuf);
}