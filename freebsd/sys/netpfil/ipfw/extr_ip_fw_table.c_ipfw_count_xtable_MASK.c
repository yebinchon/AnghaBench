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
typedef  int uint32_t ;
struct tid_info {int dummy; } ;
struct table_config {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_xtable ;
typedef  int /*<<< orphan*/  ipfw_table_xentry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 struct table_config* FUNC1 (int /*<<< orphan*/ ,struct tid_info*) ; 
 int FUNC2 (struct ip_fw_chain*,struct table_config*) ; 

int
FUNC3(struct ip_fw_chain *ch, struct tid_info *ti, uint32_t *cnt)
{
	struct table_config *tc;
	uint32_t count;

	if ((tc = FUNC1(FUNC0(ch), ti)) == NULL) {
		*cnt = 0;
		return (0); /* 'table all list' requires success */
	}

	count = FUNC2(ch, tc);
	*cnt = count * sizeof(ipfw_table_xentry);
	if (count > 0)
		*cnt += sizeof(ipfw_xtable);
	return (0);
}