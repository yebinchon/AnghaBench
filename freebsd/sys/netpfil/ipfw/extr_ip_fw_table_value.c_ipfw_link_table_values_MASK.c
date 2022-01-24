#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct tentry_info {scalar_t__ value; int /*<<< orphan*/ * ptv; int /*<<< orphan*/  pvalue; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* func ) (struct table_config*,TYPE_2__*) ;} ;
struct tableop_state {int count; scalar_t__ modified; TYPE_2__ opstate; struct table_config* tc; int /*<<< orphan*/  vmask; struct tentry_info* tei; TYPE_1__* ta; int /*<<< orphan*/  vshared; } ;
struct table_value {int refcnt; } ;
struct TYPE_6__ {int kidx; char* name; } ;
struct table_val_link {TYPE_3__ no; struct table_value* pval; } ;
struct table_config {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {struct table_value* valuestate; } ;
struct TYPE_4__ {int vlimit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*,struct tableop_state*) ; 
 int FUNC5 (struct ip_fw_chain*,struct tableop_state*,struct namedobj_instance*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_fw_chain*,struct tableop_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_fw_chain*,struct table_config*,int /*<<< orphan*/ ,struct table_value**,struct namedobj_instance**) ; 
 int /*<<< orphan*/  FUNC8 (struct namedobj_instance*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (struct namedobj_instance*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct table_value*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct table_value*,struct table_value*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct table_config*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct table_config*) ; 
 int /*<<< orphan*/  FUNC15 (struct table_config*) ; 

int
FUNC16(struct ip_fw_chain *ch, struct tableop_state *ts)
{
	int error, i, found;
	struct namedobj_instance *vi;
	struct table_config *tc;
	struct tentry_info *tei, *ptei;
	uint32_t count, vlimit;
	uint16_t vidx;
	struct table_val_link *ptv;
	struct table_value tval, *pval;

	/*
	 * Stage 1: reference all existing values and
	 * save their indices.
	 */
	FUNC1(ch);
	FUNC7(ch, ts->tc, ts->vshared, &pval, &vi);

	error = 0;
	found = 0;
	vlimit = ts->ta->vlimit;
	vidx = 0;
	tc = ts->tc;
	tei = ts->tei;
	count = ts->count;
	for (i = 0; i < count; i++) {
		ptei = &tei[i];
		ptei->value = 0; /* Ensure value is always 0 in the beginning */
		FUNC11(ptei->pvalue, &tval, ts->vmask);
		ptv = (struct table_val_link *)FUNC9(vi, 0,
		    (char *)&tval);
		if (ptv == NULL)
			continue;
		/* Deal with vlimit later */
		if (vlimit > 0 && vlimit <= ptv->no.kidx)
			continue;

		/* Value found. Bump refcount */
		ptv->pval->refcnt++;
		ptei->value = ptv->no.kidx;
		found++;
	}

	if (ts->count == found) {
		/* We've found all values , no need ts create new ones */
		return (0);
	}

	/*
	 * we have added some state here, let's attach operation
	 * state ts the list ts be able ts rollback if necessary.
	 */
	FUNC4(ch, ts);
	/* Ensure table won't disappear */
	FUNC14(tc);
	FUNC2(ch);

	/*
	 * Stage 2: allocate objects for non-existing values.
	 */
	for (i = 0; i < count; i++) {
		ptei = &tei[i];
		if (ptei->value != 0)
			continue;
		if (ptei->ptv != NULL)
			continue;
		ptei->ptv = FUNC10(sizeof(struct table_val_link), M_IPFW,
		    M_WAITOK | M_ZERO);
	}

	/*
	 * Stage 3: allocate index numbers for new values
	 * and link them to index.
	 */
	FUNC0(ch);
	FUNC15(tc);
	FUNC6(ch, ts);
	if (ts->modified != 0) {

		/*
		 * In general, we should free all state/indexes here
		 * and return. However, we keep allocated state instead
		 * to ensure we achieve some progress on each restart.
		 */
		return (0);
	}

	FUNC3(pval == ch->valuestate, ("resize_storage() notify failure"));

	/* Let's try to link values */
	for (i = 0; i < count; i++) {
		ptei = &tei[i];

		/* Check if record has appeared */
		FUNC11(ptei->pvalue, &tval, ts->vmask);
		ptv = (struct table_val_link *)FUNC9(vi, 0,
		    (char *)&tval);
		if (ptv != NULL) {
			ptv->pval->refcnt++;
			ptei->value = ptv->no.kidx;
			continue;
		}

		/* May perform UH unlock/lock */
		error = FUNC5(ch, ts, vi, &vidx);
		if (error != 0) {
			ts->opstate.func(ts->tc, &ts->opstate);
			return (error);
		}
		/* value storage resize has happened, return */
		if (ts->modified != 0)
			return (0);

		/* Finally, we have allocated valid index, let's add entry */
		ptei->value = vidx;
		ptv = (struct table_val_link *)ptei->ptv;
		ptei->ptv = NULL;

		ptv->no.kidx = vidx;
		ptv->no.name = (char *)&pval[vidx];
		ptv->pval = &pval[vidx];
		FUNC12(ptv->pval, &tval, sizeof(struct table_value));
		pval[vidx].refcnt = 1;
		FUNC8(vi, &ptv->no);
	}

	return (0);
}