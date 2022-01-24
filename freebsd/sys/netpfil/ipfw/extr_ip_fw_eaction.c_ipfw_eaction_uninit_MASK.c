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
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPFW_TLV_EACTION ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  default_eaction_typename ; 
 int /*<<< orphan*/  FUNC5 (struct ip_fw_chain*,struct named_object*) ; 
 int /*<<< orphan*/  eaction_opcodes ; 
 struct named_object* FUNC6 (struct namedobj_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct ip_fw_chain *ch, int last)
{
	struct namedobj_instance *ni;
	struct named_object *no;

	ni = FUNC0(ch);

	FUNC3(ch);
	no = FUNC6(ni, 0, IPFW_TLV_EACTION,
	    default_eaction_typename);
	if (no != NULL)
		FUNC5(ch, no);
	FUNC4(ch);
	FUNC2(last, eaction_opcodes);
	FUNC1("External actions support uninitialized");
}