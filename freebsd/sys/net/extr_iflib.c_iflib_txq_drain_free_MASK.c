#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mbuf {int dummy; } ;
struct ifmp_ring {int /*<<< orphan*/  size; TYPE_1__* cookie; } ;
typedef  TYPE_1__* iflib_txq_t ;
struct TYPE_4__ {int /*<<< orphan*/  ift_timer; int /*<<< orphan*/  ift_qstatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFLIB_QUEUE_IDLE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 struct mbuf** FUNC6 (struct ifmp_ring*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct ifmp_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*) ; 
 int /*<<< orphan*/  tx_frees ; 

__attribute__((used)) static uint32_t
FUNC10(struct ifmp_ring *r, uint32_t cidx, uint32_t pidx)
{
	int i, avail;
	struct mbuf **mp;
	iflib_txq_t txq;

	txq = r->cookie;

	txq->ift_qstatus = IFLIB_QUEUE_IDLE;
	FUNC0(txq);
	FUNC7(&txq->ift_timer);
	FUNC1(txq);

	avail = FUNC3(pidx, cidx, r->size);
	for (i = 0; i < avail; i++) {
		mp = FUNC6(r, cidx, i, avail - i);
		if (FUNC5(*mp == (struct mbuf *)txq))
			continue;
		FUNC9(*mp);
		FUNC2(tx_frees);
	}
	FUNC4(FUNC8(r) == 0);
	return (avail);
}