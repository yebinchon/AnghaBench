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
struct TYPE_2__ {int /*<<< orphan*/  rxb; int /*<<< orphan*/  gnttab; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_FIRST_RESERVED ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct xnb_pkt*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct xnb_pkt*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen)
{
	struct xnb_pkt pkt;
	int nr_entries;
	int free_slots = 60;
	struct mbuf *mbuf;

	mbuf = FUNC1(M_WAITOK, MT_DATA);

	FUNC3(mbuf, &pkt, 0, free_slots);
	nr_entries = FUNC4(&pkt, mbuf, xnb_unit_pvt.gnttab,
			&xnb_unit_pvt.rxb, DOMID_FIRST_RESERVED);

	FUNC0(nr_entries == 0);

	FUNC2(&mbuf);
}