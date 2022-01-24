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
struct ip_fw_chain {struct namedobj_instance* ifcfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_IFACES ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct namedobj_instance* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct namedobj_instance*) ; 

__attribute__((used)) static void
FUNC5(struct ip_fw_chain *ch)
{
	struct namedobj_instance *ii;

	ii = FUNC3(DEFAULT_IFACES);
	FUNC0(ch);
	if (ch->ifcfg == NULL) {
		ch->ifcfg = ii;
		ii = NULL;
	}
	FUNC1(ch);

	if (ii != NULL) {
		/* Already initialized. Free namehash. */
		FUNC4(ii);
	} else {
		/* We're the first ones. Init kernel hooks. */
		FUNC2();
	}
}