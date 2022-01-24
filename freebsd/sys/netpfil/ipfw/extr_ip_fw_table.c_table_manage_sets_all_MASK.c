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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ip_fw_chain {int dummy; } ;
typedef  enum ipfw_sets_cmd { ____Placeholder_ipfw_sets_cmd } ipfw_sets_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  IPFW_TLV_TBL_NAME ; 
#define  MOVE_ALL 130 
#define  SWAP_ALL 129 
#define  TEST_ALL 128 
 int /*<<< orphan*/  V_fw_tables_sets ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ip_fw_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct ip_fw_chain *ch, uint16_t set, uint8_t new_set,
    enum ipfw_sets_cmd cmd)
{

	switch (cmd) {
	case SWAP_ALL:
	case TEST_ALL:
		/*
		 * Return success for TEST_ALL, since nothing prevents
		 * move rules from one set to another. All tables are
		 * accessible from all sets when per-set tables sysctl
		 * is disabled.
		 */
	case MOVE_ALL:
		if (V_fw_tables_sets == 0)
			return (0);
		break;
	default:
		return (FUNC2(ch, set, new_set, cmd));
	}
	/* Use generic sets handler when per-set sysctl is enabled. */
	return (FUNC1(FUNC0(ch), IPFW_TLV_TBL_NAME,
	    set, new_set, cmd));
}