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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ta_buf ;
struct tableop_state {scalar_t__ modified; } ;
struct table_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  kidx; } ;
struct table_config {TYPE_1__ no; int /*<<< orphan*/  astate; struct table_algo* ta; } ;
struct table_algo {scalar_t__ (* need_modify ) (int /*<<< orphan*/ ,struct table_info*,int /*<<< orphan*/ ,scalar_t__*) ;int (* prepare_mod ) (char*,scalar_t__*) ;int (* fill_mod ) (int /*<<< orphan*/ ,struct table_info*,char*,scalar_t__*) ;int /*<<< orphan*/  (* flush_mod ) (char*) ;int /*<<< orphan*/  (* modify ) (int /*<<< orphan*/ ,struct table_info*,char*,scalar_t__) ;} ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*) ; 
 struct table_info* FUNC5 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 
 int TA_BUF_SZ ; 
 int /*<<< orphan*/  FUNC6 (struct ip_fw_chain*,struct tableop_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_fw_chain*,struct tableop_state*) ; 
 int /*<<< orphan*/  FUNC8 (char**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct table_info*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC10 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct table_info*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct table_info*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct table_info*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(struct ip_fw_chain *ch, struct tableop_state *ts,
    struct table_config *tc, struct table_info *ti, uint32_t count)
{
	struct table_algo *ta;
	uint64_t pflags;
	char ta_buf[TA_BUF_SZ];
	int error;

	FUNC1(ch);

	error = 0;
	ta = tc->ta;
	if (ta->need_modify == NULL)
		return (0);

	/* Acquire reference not to loose @tc between locks/unlocks */
	tc->no.refcnt++;

	/*
	 * TODO: think about avoiding race between large add/large delete
	 * operation on algorithm which implements shrinking along with
	 * growing.
	 */
	while (true) {
		pflags = 0;
		if (ta->need_modify(tc->astate, ti, count, &pflags) == 0) {
			error = 0;
			break;
		}

		/* We have to shrink/grow table */
		if (ts != NULL)
			FUNC6(ch, ts);
		FUNC2(ch);

		FUNC8(&ta_buf, 0, sizeof(ta_buf));
		error = ta->prepare_mod(ta_buf, &pflags);

		FUNC0(ch);
		if (ts != NULL)
			FUNC7(ch, ts);

		if (error != 0)
			break;

		if (ts != NULL && ts->modified != 0) {

			/*
			 * Swap operation has happened
			 * so we're currently operating on other
			 * table data. Stop doing this.
			 */
			ta->flush_mod(ta_buf);
			break;
		}

		/* Check if we still need to alter table */
		ti = FUNC5(ch, tc->no.kidx);
		if (ta->need_modify(tc->astate, ti, count, &pflags) == 0) {
			FUNC2(ch);

			/*
			 * Other thread has already performed resize.
			 * Flush our state and return.
			 */
			ta->flush_mod(ta_buf);
			break;
		}
	
		error = ta->fill_mod(tc->astate, ti, ta_buf, &pflags);
		if (error == 0) {
			/* Do actual modification */
			FUNC3(ch);
			ta->modify(tc->astate, ti, ta_buf, pflags);
			FUNC4(ch);
		}

		/* Anyway, flush data and retry */
		ta->flush_mod(ta_buf);
	}

	tc->no.refcnt--;
	return (error);
}