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

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ V_nptv6_eid ; 
 scalar_t__ FUNC2 (struct ip_fw_chain*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ipfw_nptv6 ; 
 int /*<<< orphan*/  opcodes ; 
 int /*<<< orphan*/  scodes ; 

int
FUNC3(struct ip_fw_chain *ch, int first)
{

	V_nptv6_eid = FUNC2(ch, ipfw_nptv6, "nptv6");
	if (V_nptv6_eid == 0)
		return (ENXIO);
	FUNC1(first, scodes);
	FUNC0(first, opcodes);
	return (0);
}