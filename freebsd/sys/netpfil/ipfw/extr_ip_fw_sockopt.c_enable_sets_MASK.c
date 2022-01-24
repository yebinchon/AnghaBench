#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int set; int new_set; } ;
typedef  TYPE_1__ ipfw_range_tlv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int RESVD_SET ; 
 int V_set_disable ; 

__attribute__((used)) static void
FUNC3(struct ip_fw_chain *chain, ipfw_range_tlv *rt)
{
	uint32_t v_set;

	FUNC0(chain);

	/* Change enabled/disabled sets mask */
	v_set = (V_set_disable | rt->set) & ~rt->new_set;
	v_set &= ~(1 << RESVD_SET); /* set RESVD_SET always enabled */
	FUNC1(chain);
	V_set_disable = v_set;
	FUNC2(chain);
}