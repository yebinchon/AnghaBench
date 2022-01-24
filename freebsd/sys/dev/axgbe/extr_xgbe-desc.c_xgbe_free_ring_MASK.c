#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xgbe_ring_data {int dummy; } ;
struct xgbe_ring {unsigned int rdesc_count; int /*<<< orphan*/ * rdesc; int /*<<< orphan*/ * rdesc_dmat; int /*<<< orphan*/ * rdesc_map; int /*<<< orphan*/ * rdata; int /*<<< orphan*/ * mbuf_dmat; int /*<<< orphan*/ * mbuf_map; } ;
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_AXGBE ; 
 struct xgbe_ring_data* FUNC0 (struct xgbe_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*,struct xgbe_ring_data*) ; 

__attribute__((used)) static void FUNC7(struct xgbe_prv_data *pdata,
			   struct xgbe_ring *ring)
{
	struct xgbe_ring_data *rdata;
	unsigned int i;

	if (!ring)
		return;

	FUNC2(ring->mbuf_dmat, ring->mbuf_map);
	FUNC1(ring->mbuf_dmat);

	ring->mbuf_map = NULL;
	ring->mbuf_dmat = NULL;

	if (ring->rdata) {
		for (i = 0; i < ring->rdesc_count; i++) {
			rdata = FUNC0(ring, i);
			FUNC6(pdata, rdata);
		}

		FUNC5(ring->rdata, M_AXGBE);
		ring->rdata = NULL;
	}

	FUNC3(ring->rdesc_dmat, ring->rdesc_map);
	FUNC4(ring->rdesc_dmat, ring->rdesc, ring->rdesc_map);
	FUNC1(ring->rdesc_dmat);

	ring->rdesc_map = NULL;
	ring->rdesc_dmat = NULL;
	ring->rdesc = NULL;
}