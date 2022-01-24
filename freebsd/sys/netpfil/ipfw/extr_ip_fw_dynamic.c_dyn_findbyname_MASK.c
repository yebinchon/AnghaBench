#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tid_info {scalar_t__ uidx; int /*<<< orphan*/  tlen; int /*<<< orphan*/ * tlvs; } ;
struct named_object {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ ipfw_obj_ntlv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPFW_TLV_STATE_NAME ; 
 char* default_state_name ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct named_object* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC4(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
	ipfw_obj_ntlv *ntlv;
	const char *name;

	FUNC1("uidx %d", ti->uidx);
	if (ti->uidx != 0) {
		if (ti->tlvs == NULL)
			return (EINVAL);
		/* Search ntlv in the buffer provided by user */
		ntlv = FUNC2(ti->tlvs, ti->tlen, ti->uidx,
		    IPFW_TLV_STATE_NAME);
		if (ntlv == NULL)
			return (EINVAL);
		name = ntlv->name;
	} else
		name = default_state_name;
	/*
	 * Search named object with corresponding name.
	 * Since states objects are global - ignore the set value
	 * and use zero instead.
	 */
	*pno = FUNC3(FUNC0(ch), 0,
	    IPFW_TLV_STATE_NAME, name);
	/*
	 * We always return success here.
	 * The caller will check *pno and mark object as unresolved,
	 * then it will automatically create "default" object.
	 */
	return (0);
}