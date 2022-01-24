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
struct named_object {scalar_t__ kidx; int /*<<< orphan*/  refcnt; } ;
struct ip_fw_chain {int n_rules; int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  IPFW_TLV_EACTION ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  default_eaction_typename ; 
 int /*<<< orphan*/  FUNC5 (struct ip_fw_chain*,scalar_t__,scalar_t__,scalar_t__) ; 
 struct named_object* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ip_fw_chain*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(struct ip_fw_chain *ch, uint16_t eaction_id,
    uint16_t instance_id, bool reset_rules)
{
	struct named_object *no;
	int i;

	FUNC2(ch);

	no = FUNC6(FUNC0(ch), 0,
	    IPFW_TLV_EACTION, default_eaction_typename);
	if (no == NULL)
		FUNC8("Default external action handler is not found");
	if (eaction_id == no->kidx)
		FUNC8("Wrong eaction_id");

	FUNC1("Going to replace id %u with %u", eaction_id, no->kidx);
	FUNC3(ch);
	/*
	 * Reset eaction objects only if it is referenced by rules.
	 * But always reset objects for orphaned dynamic states.
	 */
	if (reset_rules) {
		for (i = 0; i < ch->n_rules; i++) {
			/*
			 * Refcount on the original object will be just
			 * ignored on destroy. Refcount on default_eaction
			 * will be decremented on rule deletion, thus we
			 * need to reference default_eaction object.
			 */
			if (FUNC7(ch, ch->map[i], eaction_id,
			    no->kidx, instance_id) != 0)
				no->refcnt++;
		}
	}
	/*
	 * Reset eaction opcodes for orphaned dynamic states.
	 * Since parent rules are already deleted, we don't need to
	 * reference named object of default_eaction.
	 */
	FUNC5(ch, eaction_id, no->kidx, instance_id);
	FUNC4(ch);
}