#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tid_info {scalar_t__ type; int /*<<< orphan*/  uidx; } ;
struct table_value {int dummy; } ;
struct table_info {int dummy; } ;
struct TYPE_9__ {scalar_t__ subtype; int /*<<< orphan*/  kidx; } ;
struct table_config {int /*<<< orphan*/  astate; struct table_algo* ta; TYPE_3__ no; } ;
struct table_algo {int (* find_tentry ) (int /*<<< orphan*/ ,struct table_info*,TYPE_5__*) ;} ;
struct sockopt_data {size_t valsize; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ head; } ;
struct _ipfw_obj_header {TYPE_2__ ntlv; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; int /*<<< orphan*/  kidx; } ;
struct TYPE_11__ {TYPE_4__ v; int /*<<< orphan*/  idx; } ;
typedef  TYPE_5__ ipfw_obj_tentry ;
typedef  struct _ipfw_obj_header ipfw_obj_header ;
typedef  int /*<<< orphan*/  ip_fw3_opheader ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int EINVAL ; 
 int ENOTSUP ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 struct table_info* FUNC3 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 struct table_config* FUNC4 (struct namedobj_instance*,struct tid_info*) ; 
 struct table_value* FUNC5 (struct ip_fw_chain*,struct table_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct table_value*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sockopt_data*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct _ipfw_obj_header*,struct tid_info*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct table_info*,TYPE_5__*) ; 

__attribute__((used)) static int
FUNC10(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
	ipfw_obj_tentry *tent;
	ipfw_obj_header *oh;
	struct tid_info ti;
	struct table_config *tc;
	struct table_algo *ta;
	struct table_info *kti;
	struct table_value *pval;
	struct namedobj_instance *ni;
	int error;
	size_t sz;

	/* Check minimum header size */
	sz = sizeof(*oh) + sizeof(*tent);
	if (sd->valsize != sz)
		return (EINVAL);

	oh = (struct _ipfw_obj_header *)FUNC7(sd, sz);
	tent = (ipfw_obj_tentry *)(oh + 1);

	/* Basic length checks for TLVs */
	if (oh->ntlv.head.length != sizeof(oh->ntlv))
		return (EINVAL);

	FUNC8(oh, &ti);
	ti.type = oh->ntlv.type;
	ti.uidx = tent->idx;

	FUNC1(ch);
	ni = FUNC0(ch);

	/*
	 * Find existing table and check its type .
	 */
	ta = NULL;
	if ((tc = FUNC4(ni, &ti)) == NULL) {
		FUNC2(ch);
		return (ESRCH);
	}

	/* check table type */
	if (tc->no.subtype != ti.type) {
		FUNC2(ch);
		return (EINVAL);
	}

	kti = FUNC3(ch, tc->no.kidx);
	ta = tc->ta;

	if (ta->find_tentry == NULL)
		return (ENOTSUP);

	error = ta->find_tentry(tc->astate, kti, tent);
	if (error == 0) {
		pval = FUNC5(ch, tc, tent->v.kidx);
		FUNC6(pval, &tent->v.value);
	}
	FUNC2(ch);

	return (error);
}