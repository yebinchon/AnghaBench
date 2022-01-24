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
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int /*<<< orphan*/ * ifcfg; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  destroy_iface ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct namedobj_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct namedobj_instance*,int /*<<< orphan*/ ,struct ip_fw_chain*) ; 

void
FUNC6(struct ip_fw_chain *ch)
{
	struct namedobj_instance *ii;

	FUNC1(ch);
	ii = FUNC0(ch);
	ch->ifcfg = NULL;
	FUNC2(ch);

	if (ii != NULL) {
		FUNC5(ii, destroy_iface, ch);
		FUNC4(ii);
		FUNC3();
	}
}