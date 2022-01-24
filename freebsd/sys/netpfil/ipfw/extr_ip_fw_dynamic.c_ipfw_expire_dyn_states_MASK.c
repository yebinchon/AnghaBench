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
struct ip_fw_chain {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_range_tlv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 scalar_t__ V_dyn_count ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*,int /*<<< orphan*/ *) ; 

void
FUNC2(struct ip_fw_chain *chain, ipfw_range_tlv *rt)
{
	/*
	 * Do not perform any checks if we currently have no dynamic states
	 */
	if (V_dyn_count == 0)
		return;

	FUNC0(chain);
	FUNC1(chain, rt);
}