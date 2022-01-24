#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tid_info {scalar_t__ type; } ;
struct tentry_info {int flags; } ;
struct TYPE_2__ {scalar_t__ subtype; int /*<<< orphan*/  refcnt; } ;
struct table_config {scalar_t__ locked; TYPE_1__ no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EACCES ; 
 int EFBIG ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int OP_ADD ; 
 int OP_DEL ; 
 int TEI_FLAGS_COMPAT ; 
 scalar_t__ FUNC5 (struct table_config*,struct tentry_info*) ; 
 int FUNC6 (struct ip_fw_chain*,struct tid_info*,int /*<<< orphan*/ *) ; 
 struct table_config* FUNC7 (struct namedobj_instance*,struct tid_info*) ; 
 scalar_t__ FUNC8 (struct namedobj_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ip_fw_chain *ch, struct tid_info *ti,
    struct tentry_info *tei, uint32_t count, int op,
    struct table_config **ptc)
{
	struct namedobj_instance *ni;
	struct table_config *tc;
	uint16_t kidx;
	int error;

	FUNC2(ch);

	ni = FUNC0(ch);
	tc = NULL;
	if ((tc = FUNC7(ni, ti)) != NULL) {
		/* check table type */
		if (tc->no.subtype != ti->type)
			return (EINVAL);

		if (tc->locked != 0)
			return (EACCES);

		/* Try to exit early on limit hit */
		if (op == OP_ADD && count == 1 &&
		    FUNC5(tc, tei) != 0)
			return (EFBIG);

		/* Reference and return */
		tc->no.refcnt++;
		*ptc = tc;
		return (0);
	}

	if (op == OP_DEL)
		return (ESRCH);

	/* Compatibility mode: create new table for old clients */
	if ((tei->flags & TEI_FLAGS_COMPAT) == 0)
		return (ESRCH);

	FUNC3(ch);
	error = FUNC6(ch, ti, &kidx);
	FUNC1(ch);
	
	if (error != 0)
		return (error);

	tc = (struct table_config *)FUNC8(ni, kidx);
	FUNC4(tc != NULL, ("create_table_compat returned bad idx %d", kidx));

	/* OK, now we've got referenced table. */
	*ptc = tc;
	return (0);
}