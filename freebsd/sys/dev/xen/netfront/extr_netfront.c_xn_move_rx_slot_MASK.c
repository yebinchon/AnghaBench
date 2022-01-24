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
struct TYPE_4__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct netfront_rxq {TYPE_2__ ring; void** grant_ref; struct mbuf** mbufs; } ;
struct mbuf {int dummy; } ;
typedef  void* grant_ref_t ;
struct TYPE_3__ {int id; void* gref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct netfront_rxq *rxq, struct mbuf *m,
    grant_ref_t ref)
{
	int new = FUNC2(rxq->ring.req_prod_pvt);

	FUNC0(rxq->mbufs[new] == NULL, ("mbufs != NULL"));
	rxq->mbufs[new] = m;
	rxq->grant_ref[new] = ref;
	FUNC1(&rxq->ring, rxq->ring.req_prod_pvt)->id = new;
	FUNC1(&rxq->ring, rxq->ring.req_prod_pvt)->gref = ref;
	rxq->ring.req_prod_pvt++;
}