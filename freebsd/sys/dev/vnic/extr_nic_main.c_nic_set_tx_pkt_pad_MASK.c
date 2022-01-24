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
typedef  int uint64_t ;
struct nicpf {int dummy; } ;

/* Variables and functions */
 int MAX_BGX_PER_CN88XX ; 
 int MAX_LMAC_PER_BGX ; 
 int NIC_PF_LMAC_0_7_CFG ; 
 int FUNC0 (struct nicpf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nicpf*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nicpf *nic, int size)
{
	int lmac;
	uint64_t lmac_cfg;

	/* Max value that can be set is 60 */
	if (size > 60)
		size = 60;

	for (lmac = 0; lmac < (MAX_BGX_PER_CN88XX * MAX_LMAC_PER_BGX); lmac++) {
		lmac_cfg = FUNC0(nic, NIC_PF_LMAC_0_7_CFG | (lmac << 3));
		lmac_cfg &= ~(0xF << 2);
		lmac_cfg |= ((size / 4) << 2);
		FUNC1(nic, NIC_PF_LMAC_0_7_CFG | (lmac << 3), lmac_cfg);
	}
}