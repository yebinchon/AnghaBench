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
typedef  scalar_t__ uint16_t ;
struct ip_fw_chain {int dummy; } ;
typedef  int /*<<< orphan*/  ipfw_eaction_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*,int /*<<< orphan*/ ,char const*,scalar_t__*) ; 
 scalar_t__ FUNC2 (char const*) ; 

uint16_t
FUNC3(struct ip_fw_chain *ch, ipfw_eaction_t handler,
    const char *name)
{
	uint16_t eaction_id;

	eaction_id = 0;
	if (FUNC2(name) == 0) {
		FUNC1(ch, handler, name, &eaction_id);
		FUNC0("Registered external action '%s' with id %u",
		    name, eaction_id);
	}
	return (eaction_id);
}