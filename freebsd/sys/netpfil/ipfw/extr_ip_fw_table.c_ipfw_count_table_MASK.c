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
typedef  int /*<<< orphan*/  uint32_t ;
struct tid_info {int dummy; } ;
struct table_config {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int ESRCH ; 
 struct table_config* FUNC1 (int /*<<< orphan*/ ,struct tid_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*,struct table_config*) ; 

int
FUNC3(struct ip_fw_chain *ch, struct tid_info *ti, uint32_t *cnt)
{
	struct table_config *tc;

	if ((tc = FUNC1(FUNC0(ch), ti)) == NULL)
		return (ESRCH);
	*cnt = FUNC2(ch, tc);
	return (0);
}