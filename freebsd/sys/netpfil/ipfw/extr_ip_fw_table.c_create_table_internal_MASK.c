#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct tid_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ subtype; int /*<<< orphan*/  kidx; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  etlv; } ;
struct table_config {int locked; TYPE_1__ no; int /*<<< orphan*/  limit; int /*<<< orphan*/  vmask; } ;
struct table_algo {int flags; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  limit; int /*<<< orphan*/  vmask; int /*<<< orphan*/  tflags; } ;
typedef  TYPE_2__ ipfw_xtable_info ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int EBUSY ; 
 int EEXIST ; 
 int ENOMEM ; 
 int ENOTSUP ; 
 int IPFW_TGFLAGS_LOCKED ; 
 int /*<<< orphan*/  IPFW_TLV_TBL_NAME ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int TA_FLAG_READONLY ; 
 struct table_config* FUNC4 (struct ip_fw_chain*,struct tid_info*,struct table_algo*,char*,int /*<<< orphan*/ ) ; 
 struct table_config* FUNC5 (struct namedobj_instance*,struct tid_info*) ; 
 struct table_algo* FUNC6 (int /*<<< orphan*/ ,struct tid_info*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct namedobj_instance*,struct table_config*) ; 
 scalar_t__ FUNC8 (struct namedobj_instance*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ip_fw_chain*,struct table_config*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(struct ip_fw_chain *ch, struct tid_info *ti,
    char *aname, ipfw_xtable_info *i, uint16_t *pkidx, int compat)
{
	struct namedobj_instance *ni;
	struct table_config *tc, *tc_new, *tmp;
	struct table_algo *ta;
	uint16_t kidx;

	ni = FUNC0(ch);

	ta = FUNC6(FUNC1(ch), ti, aname);
	if (ta == NULL)
		return (ENOTSUP);

	tc = FUNC4(ch, ti, ta, aname, i->tflags);
	if (tc == NULL)
		return (ENOMEM);

	tc->vmask = i->vmask;
	tc->limit = i->limit;
	if (ta->flags & TA_FLAG_READONLY)
		tc->locked = 1;
	else
		tc->locked = (i->flags & IPFW_TGFLAGS_LOCKED) != 0;

	FUNC2(ch);

	/* Check if table has been already created */
	tc_new = FUNC5(ni, ti);
	if (tc_new != NULL) {

		/*
		 * Compat: do not fail if we're
		 * requesting to create existing table
		 * which has the same type
		 */
		if (compat == 0 || tc_new->no.subtype != tc->no.subtype) {
			FUNC3(ch);
			FUNC7(ni, tc);
			return (EEXIST);
		}

		/* Exchange tc and tc_new for proper refcounting & freeing */
		tmp = tc;
		tc = tc_new;
		tc_new = tmp;
	} else {
		/* New table */
		if (FUNC8(ni, &kidx) != 0) {
			FUNC3(ch);
			FUNC10("Unable to allocate table index."
			    " Consider increasing net.inet.ip.fw.tables_max");
			FUNC7(ni, tc);
			return (EBUSY);
		}
		tc->no.kidx = kidx;
		tc->no.etlv = IPFW_TLV_TBL_NAME;

		FUNC9(ch, tc);
	}

	if (compat != 0)
		tc->no.refcnt++;
	if (pkidx != NULL)
		*pkidx = tc->no.kidx;

	FUNC3(ch);

	if (tc_new != NULL)
		FUNC7(ni, tc_new);

	return (0);
}