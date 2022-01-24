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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_ABORT_RPL_RSS ; 
 int /*<<< orphan*/  CPL_ACT_OPEN_RPL ; 
 int /*<<< orphan*/  CPL_COOKIE_FILTER ; 
 int /*<<< orphan*/  CPL_COOKIE_HASHFILTER ; 
 int /*<<< orphan*/  CPL_L2T_WRITE_RPL ; 
 int /*<<< orphan*/  CPL_SET_TCB_RPL ; 
 int /*<<< orphan*/  CPL_SMT_WRITE_RPL ; 
 int /*<<< orphan*/  CPL_T5_TRACE_PKT ; 
 int /*<<< orphan*/  CPL_TRACE_PKT ; 
 int EBUSY ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  do_l2t_write_rpl ; 
 int /*<<< orphan*/  do_smt_write_rpl ; 
 int /*<<< orphan*/  fatal_callout ; 
 int hz ; 
 int /*<<< orphan*/  mlu ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  t4_del_hashfilter_rpl ; 
 int /*<<< orphan*/  t4_filter_rpl ; 
 int /*<<< orphan*/  t4_hashfilter_ao_rpl ; 
 int /*<<< orphan*/  t4_hashfilter_tcb_rpl ; 
 int /*<<< orphan*/  t4_list ; 
 int /*<<< orphan*/  t4_list_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  t4_trace_pkt ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  t4_uld_list ; 
 int /*<<< orphan*/  t4_uld_list_lock ; 
 int /*<<< orphan*/  t5_trace_pkt ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(module_t mod, int cmd, void *arg)
{
	int rc = 0;
	static int loaded = 0;

	switch (cmd) {
	case MOD_LOAD:
		FUNC8(&mlu);
		if (loaded++ == 0) {
			FUNC15();
			FUNC13(CPL_SET_TCB_RPL,
			    t4_filter_rpl, CPL_COOKIE_FILTER);
			FUNC13(CPL_L2T_WRITE_RPL,
			    do_l2t_write_rpl, CPL_COOKIE_FILTER);
			FUNC13(CPL_ACT_OPEN_RPL,
			    t4_hashfilter_ao_rpl, CPL_COOKIE_HASHFILTER);
			FUNC13(CPL_SET_TCB_RPL,
			    t4_hashfilter_tcb_rpl, CPL_COOKIE_HASHFILTER);
			FUNC13(CPL_ABORT_RPL_RSS,
			    t4_del_hashfilter_rpl, CPL_COOKIE_HASHFILTER);
			FUNC12(CPL_TRACE_PKT, t4_trace_pkt);
			FUNC12(CPL_T5_TRACE_PKT, t5_trace_pkt);
			FUNC12(CPL_SMT_WRITE_RPL,
			    do_smt_write_rpl);
			FUNC5(&t4_list_lock, "T4/T5 adapters");
			FUNC1(&t4_list);
			FUNC2(&fatal_callout, 1);
#ifdef TCP_OFFLOAD
			sx_init(&t4_uld_list_lock, "T4/T5 ULDs");
			SLIST_INIT(&t4_uld_list);
#endif
#ifdef INET6
			t4_clip_modload();
#endif
			FUNC17();
			FUNC19();
		}
		FUNC9(&mlu);
		break;

	case MOD_UNLOAD:
		FUNC8(&mlu);
		if (--loaded == 0) {
			int tries;

			FUNC6(&t4_list_lock);
			if (!FUNC0(&t4_list)) {
				rc = EBUSY;
				FUNC7(&t4_list_lock);
				goto done_unload;
			}
#ifdef TCP_OFFLOAD
			sx_slock(&t4_uld_list_lock);
			if (!SLIST_EMPTY(&t4_uld_list)) {
				rc = EBUSY;
				sx_sunlock(&t4_uld_list_lock);
				sx_sunlock(&t4_list_lock);
				goto done_unload;
			}
#endif
			tries = 0;
			while (tries++ < 5 && FUNC14() != 0) {
				FUNC20("%ju clusters with custom free routine "
				    "still is use.\n", FUNC14());
				FUNC3("t4unload", 2 * hz);
			}
#ifdef TCP_OFFLOAD
			sx_sunlock(&t4_uld_list_lock);
#endif
			FUNC7(&t4_list_lock);

			if (FUNC14() == 0) {
				FUNC18();
#ifdef INET6
				t4_clip_modunload();
#endif
#ifdef TCP_OFFLOAD
				sx_destroy(&t4_uld_list_lock);
#endif
				FUNC4(&t4_list_lock);
				FUNC16();
				loaded = 0;
			} else {
				rc = EBUSY;
				loaded++;	/* undo earlier decrement */
			}
		}
done_unload:
		FUNC9(&mlu);
		break;
	}

	return (rc);
}