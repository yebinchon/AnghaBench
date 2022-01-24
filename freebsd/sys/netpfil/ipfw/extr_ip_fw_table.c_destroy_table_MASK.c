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
struct tid_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ refcnt; int kidx; } ;
struct table_config {char* tablename; int /*<<< orphan*/  ti_copy; int /*<<< orphan*/  astate; int /*<<< orphan*/  ta; TYPE_1__ no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EBUSY ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 struct table_config* FUNC5 (struct namedobj_instance*,struct tid_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct namedobj_instance*,struct table_config*) ; 
 scalar_t__ FUNC7 (struct namedobj_instance*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_fw_chain*,struct table_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ip_fw_chain*,struct table_config*) ; 

__attribute__((used)) static int
FUNC11(struct ip_fw_chain *ch, struct tid_info *ti)
{
	struct namedobj_instance *ni;
	struct table_config *tc;

	FUNC1(ch);

	ni = FUNC0(ch);
	if ((tc = FUNC5(ni, ti)) == NULL) {
		FUNC2(ch);
		return (ESRCH);
	}

	/* Do not permit destroying referenced tables */
	if (tc->no.refcnt > 0) {
		FUNC2(ch);
		return (EBUSY);
	}

	FUNC3(ch);
	FUNC10(ch, tc);
	FUNC4(ch);

	/* Free obj index */
	if (FUNC7(ni, tc->no.kidx) != 0)
		FUNC9("Error unlinking kidx %d from table %s\n",
		    tc->no.kidx, tc->tablename);

	/* Unref values used in tables while holding UH lock */
	FUNC8(ch, tc, tc->ta, tc->astate, &tc->ti_copy);
	FUNC2(ch);

	FUNC6(ni, tc);

	return (0);
}