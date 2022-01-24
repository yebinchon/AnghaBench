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
typedef  unsigned long uint8_t ;
typedef  unsigned long uint64_t ;
struct nicpf {int dummy; } ;

/* Variables and functions */
 scalar_t__ NIC_PF_MAILBOX_INT ; 
 int /*<<< orphan*/  FUNC0 (struct nicpf*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nicpf*,unsigned long) ; 
 unsigned long FUNC2 (struct nicpf*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct nicpf *nic, int mbx)
{
	uint64_t intr;
	uint8_t  vf, vf_per_mbx_reg = 64;

	intr = FUNC2(nic, NIC_PF_MAILBOX_INT + (mbx << 3));
	for (vf = 0; vf < vf_per_mbx_reg; vf++) {
		if (intr & (1UL << vf)) {
			FUNC1(nic, vf + (mbx * vf_per_mbx_reg));
			FUNC0(nic, vf, mbx);
		}
	}
}