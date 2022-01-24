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
struct fw_ldst_mps_rplc {void* rplc31_0; void* rplc63_32; void* rplc95_64; void* rplc127_96; void* rplc159_128; void* rplc191_160; void* rplc223_192; void* rplc255_224; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MPS_VF_RPLCT_MAP0 ; 
 int /*<<< orphan*/  A_MPS_VF_RPLCT_MAP1 ; 
 int /*<<< orphan*/  A_MPS_VF_RPLCT_MAP2 ; 
 int /*<<< orphan*/  A_MPS_VF_RPLCT_MAP3 ; 
 int /*<<< orphan*/  A_MPS_VF_RPLCT_MAP4 ; 
 int /*<<< orphan*/  A_MPS_VF_RPLCT_MAP5 ; 
 int /*<<< orphan*/  A_MPS_VF_RPLCT_MAP6 ; 
 int /*<<< orphan*/  A_MPS_VF_RPLCT_MAP7 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct adapter *padap, struct fw_ldst_mps_rplc *mps_rplc)
{
	if (FUNC1(padap)) {
		mps_rplc->rplc255_224 = FUNC0(FUNC2(padap,
							  A_MPS_VF_RPLCT_MAP3));
		mps_rplc->rplc223_192 = FUNC0(FUNC2(padap,
							  A_MPS_VF_RPLCT_MAP2));
		mps_rplc->rplc191_160 = FUNC0(FUNC2(padap,
							  A_MPS_VF_RPLCT_MAP1));
		mps_rplc->rplc159_128 = FUNC0(FUNC2(padap,
							  A_MPS_VF_RPLCT_MAP0));
	} else {
		mps_rplc->rplc255_224 = FUNC0(FUNC2(padap,
							  A_MPS_VF_RPLCT_MAP7));
		mps_rplc->rplc223_192 = FUNC0(FUNC2(padap,
							  A_MPS_VF_RPLCT_MAP6));
		mps_rplc->rplc191_160 = FUNC0(FUNC2(padap,
							  A_MPS_VF_RPLCT_MAP5));
		mps_rplc->rplc159_128 = FUNC0(FUNC2(padap,
							  A_MPS_VF_RPLCT_MAP4));
	}
	mps_rplc->rplc127_96 = FUNC0(FUNC2(padap, A_MPS_VF_RPLCT_MAP3));
	mps_rplc->rplc95_64 = FUNC0(FUNC2(padap, A_MPS_VF_RPLCT_MAP2));
	mps_rplc->rplc63_32 = FUNC0(FUNC2(padap, A_MPS_VF_RPLCT_MAP1));
	mps_rplc->rplc31_0 = FUNC0(FUNC2(padap, A_MPS_VF_RPLCT_MAP0));
}