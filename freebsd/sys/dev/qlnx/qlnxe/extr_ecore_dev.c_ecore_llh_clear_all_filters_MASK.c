#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct ecore_dev {TYPE_1__* p_llh_info; int /*<<< orphan*/  mf_bits; } ;
struct TYPE_2__ {scalar_t__ num_ppfid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_MF_LLH_MAC_CLSS ; 
 int /*<<< orphan*/  ECORE_MF_LLH_PROTO_CLSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_dev*,scalar_t__) ; 

void FUNC2(struct ecore_dev *p_dev)
{
	u8 ppfid;

	if (!FUNC0(ECORE_MF_LLH_PROTO_CLSS, &p_dev->mf_bits) &&
	    !FUNC0(ECORE_MF_LLH_MAC_CLSS, &p_dev->mf_bits))
		return;

	for (ppfid = 0; ppfid < p_dev->p_llh_info->num_ppfid; ppfid++)
		FUNC1(p_dev, ppfid);
}