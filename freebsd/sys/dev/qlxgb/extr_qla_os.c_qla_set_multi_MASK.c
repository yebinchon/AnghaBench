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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {struct ifnet* ifp; } ;
typedef  TYPE_1__ qla_host_t ;

/* Variables and functions */
 int Q8_MAC_ADDR_LEN ; 
 int Q8_MAX_NUM_MULTICAST_ADDRS ; 
 int FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qla_copy_maddr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(qla_host_t *ha, uint32_t add_multi)
{
	uint8_t mta[Q8_MAX_NUM_MULTICAST_ADDRS * Q8_MAC_ADDR_LEN];
	struct ifnet *ifp = ha->ifp;
	int mcnt;

	mcnt = FUNC0(ifp, qla_copy_maddr, mta);
	FUNC1(ha, mta, mcnt, add_multi);

	return;
}