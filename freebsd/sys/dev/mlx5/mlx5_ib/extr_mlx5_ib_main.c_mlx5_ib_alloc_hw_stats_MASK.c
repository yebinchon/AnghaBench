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
typedef  scalar_t__ u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RDMA_HW_STATS_DEFAULT_LIFESPAN ; 
 int /*<<< orphan*/  names ; 
 struct rdma_hw_stats* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stats_offsets ; 

__attribute__((used)) static struct rdma_hw_stats *FUNC3(struct ib_device *ibdev,
						    u8 port_num)
{
	FUNC1(FUNC0(names) != FUNC0(stats_offsets));

	/* We support only per port stats */
	if (port_num == 0)
		return NULL;

	return FUNC2(names, FUNC0(names),
					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
}