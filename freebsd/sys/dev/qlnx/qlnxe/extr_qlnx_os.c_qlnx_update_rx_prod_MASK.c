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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct qlnx_rx_queue {int /*<<< orphan*/  hw_rxq_prod_addr; int /*<<< orphan*/  rx_comp_ring; int /*<<< orphan*/  rx_bd_ring; } ;
struct eth_rx_prod_data {void* cqe_prod; void* bd_prod; } ;
struct ecore_hwfn {int dummy; } ;
typedef  int /*<<< orphan*/  rx_prods ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct ecore_hwfn *p_hwfn, struct qlnx_rx_queue *rxq)
{

        uint16_t	 	bd_prod;
        uint16_t		cqe_prod;
	union {
		struct eth_rx_prod_data rx_prod_data;
		uint32_t		data32;
	} rx_prods;

        bd_prod = FUNC0(&rxq->rx_bd_ring);
        cqe_prod = FUNC0(&rxq->rx_comp_ring);

        /* Update producers */
        rx_prods.rx_prod_data.bd_prod = FUNC1(bd_prod);
        rx_prods.rx_prod_data.cqe_prod = FUNC1(cqe_prod);

        /* Make sure that the BD and SGE data is updated before updating the
         * producers since FW might read the BD/SGE right after the producer
         * is updated.
         */
	FUNC3();

        FUNC2(p_hwfn, rxq->hw_rxq_prod_addr,
		sizeof(rx_prods), &rx_prods.data32);

        /* mmiowb is needed to synchronize doorbell writes from more than one
         * processor. It guarantees that the write arrives to the device before
         * the napi lock is released and another qlnx_poll is called (possibly
         * on another CPU). Without this barrier, the next doorbell can bypass
         * this doorbell. This is applicable to IA64/Altix systems.
         */
        FUNC3();

	return;
}