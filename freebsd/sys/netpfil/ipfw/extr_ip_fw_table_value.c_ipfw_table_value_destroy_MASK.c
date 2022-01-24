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
struct ip_fw_chain {int /*<<< orphan*/  valuestate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  destroy_value ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_fw_chain*) ; 
 int /*<<< orphan*/  scodes ; 

void
FUNC5(struct ip_fw_chain *ch, int last)
{

	FUNC1(last, scodes);

	FUNC2(ch->valuestate, M_IPFW);
	FUNC4(FUNC0(ch), destroy_value, ch);
	FUNC3(FUNC0(ch));
}