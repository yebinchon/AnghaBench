#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  nmcast; TYPE_1__* mcast; } ;
typedef  TYPE_2__ qla_host_t ;
struct TYPE_5__ {scalar_t__* addr; } ;

/* Variables and functions */
 int Q8_MAX_NUM_MULTICAST_ADDRS ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(qla_host_t *ha, uint8_t *mta)
{
	int i;

	for (i = 0; i < Q8_MAX_NUM_MULTICAST_ADDRS; i++) {
		if (FUNC0(ha->mcast[i].addr, mta) == 0) {

			if (FUNC1(ha, mta, 0, i))
				return (-1);

			ha->mcast[i].addr[0] = 0;
			ha->mcast[i].addr[1] = 0;
			ha->mcast[i].addr[2] = 0;
			ha->mcast[i].addr[3] = 0;
			ha->mcast[i].addr[4] = 0;
			ha->mcast[i].addr[5] = 0;

			ha->nmcast--;	

			return 0;
		}
	}
	return 0;
}