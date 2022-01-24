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
typedef  int /*<<< orphan*/  uint16_t ;
struct named_object {scalar_t__ etlv; int refcnt; int /*<<< orphan*/  name; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ IPFW_TLV_EACTION ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*,struct named_object*) ; 
 struct named_object* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_fw_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC7(struct ip_fw_chain *ch, uint16_t eaction_id)
{
	struct named_object *no;

	FUNC2(ch);
	no = FUNC5(FUNC0(ch), eaction_id);
	if (no == NULL || no->etlv != IPFW_TLV_EACTION) {
		FUNC3(ch);
		return (EINVAL);
	}
	FUNC6(ch, eaction_id, 0, (no->refcnt > 1));
	FUNC1("External action '%s' with id %u unregistered",
	    no->name, eaction_id);
	FUNC4(ch, no);
	FUNC3(ch);
	return (0);
}