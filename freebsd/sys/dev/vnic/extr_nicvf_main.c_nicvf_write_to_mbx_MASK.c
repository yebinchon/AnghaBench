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
typedef  union nic_mbx {int dummy; } nic_mbx ;
typedef  int /*<<< orphan*/  uint64_t ;
struct nicvf {int dummy; } ;

/* Variables and functions */
 scalar_t__ NIC_VF_PF_MAILBOX_0_1 ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct nicvf *nic, union nic_mbx *mbx)
{
	uint64_t *msg = (uint64_t *)mbx;

	FUNC0(nic, NIC_VF_PF_MAILBOX_0_1 + 0, msg[0]);
	FUNC0(nic, NIC_VF_PF_MAILBOX_0_1 + 8, msg[1]);
}