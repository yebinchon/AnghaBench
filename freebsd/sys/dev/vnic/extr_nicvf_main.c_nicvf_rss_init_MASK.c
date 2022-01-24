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
struct nicvf_rss_info {int* key; int cfg; int rss_size; int* ind_tbl; scalar_t__ hash_bits; int /*<<< orphan*/  enable; } ;
struct nicvf {scalar_t__ cpi_alg; int rx_queues; struct nicvf_rss_info rss_info; } ;

/* Variables and functions */
 scalar_t__ CPI_ALG_NONE ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NIC_VNIC_RSS_CFG ; 
 int RSS_IP_HASH_ENA ; 
 int RSS_TCP_HASH_ENA ; 
 int RSS_UDP_HASH_ENA ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*) ; 

__attribute__((used)) static int
FUNC5(struct nicvf *nic)
{
	struct nicvf_rss_info *rss;
	int idx;

	FUNC2(nic);

	rss = &nic->rss_info;
	if (nic->cpi_alg != CPI_ALG_NONE) {
		rss->enable = FALSE;
		rss->hash_bits = 0;
		return (ENXIO);
	}

	rss->enable = TRUE;

	/* Using the HW reset value for now */
	rss->key[0] = 0xFEED0BADFEED0BADUL;
	rss->key[1] = 0xFEED0BADFEED0BADUL;
	rss->key[2] = 0xFEED0BADFEED0BADUL;
	rss->key[3] = 0xFEED0BADFEED0BADUL;
	rss->key[4] = 0xFEED0BADFEED0BADUL;

	FUNC4(nic);

	rss->cfg = RSS_IP_HASH_ENA | RSS_TCP_HASH_ENA | RSS_UDP_HASH_ENA;
	FUNC3(nic, NIC_VNIC_RSS_CFG, rss->cfg);

	rss->hash_bits = FUNC0(rss->rss_size) - 1;
	for (idx = 0; idx < rss->rss_size; idx++)
		rss->ind_tbl[idx] = idx % nic->rx_queues;

	FUNC1(nic);

	return (0);
}