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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct tcp_hpts_entry {int p_hpts_active; int p_hpts_sleep_time; int overidden_sleep; int p_on_min_sleep; int /*<<< orphan*/  p_mtx; scalar_t__ p_direct_wake; int /*<<< orphan*/  p_cpu; int /*<<< orphan*/  co; scalar_t__ p_hpts_wake_scheduled; } ;
struct epoch_tracker {int dummy; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int C_DIRECT_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_hpts_entry*) ; 
 int HPTS_TICKS_PER_USEC ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcp_hpts_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hpts_timeout_dir ; 
 int /*<<< orphan*/  hpts_timeout_swi ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ tcp_hpts_callout_skip_swi ; 
 int /*<<< orphan*/  tcp_hpts_precision ; 
 int /*<<< orphan*/  FUNC11 (struct tcp_hpts_entry*) ; 
 int tcp_min_hptsi_time ; 
 int /*<<< orphan*/  FUNC12 (struct timeval) ; 

__attribute__((used)) static void
FUNC13(void *ctx)
{
	struct tcp_hpts_entry *hpts;
	struct epoch_tracker et;
	struct timeval tv;
	sbintime_t sb;

	hpts = (struct tcp_hpts_entry *)ctx;
	FUNC9(&hpts->p_mtx);
	if (hpts->p_direct_wake) {
		/* Signaled by input */
		FUNC8(&hpts->co);
	} else {
		/* Timed out */
		if (FUNC6(&hpts->co) ||
		    !FUNC4(&hpts->co)) {
			FUNC10(&hpts->p_mtx);
			return;
		}
		FUNC5(&hpts->co);
	}
	hpts->p_hpts_wake_scheduled = 0;
	hpts->p_hpts_active = 1;
	FUNC2(et);
	FUNC11(hpts);
	FUNC3(et);
	FUNC1(hpts);
	tv.tv_sec = 0;
	tv.tv_usec = hpts->p_hpts_sleep_time * HPTS_TICKS_PER_USEC;
	if (tcp_min_hptsi_time && (tv.tv_usec < tcp_min_hptsi_time)) {
		hpts->overidden_sleep = tv.tv_usec;
		tv.tv_usec = tcp_min_hptsi_time;
		hpts->p_on_min_sleep = 1;
	} else {
		/* Clear the min sleep flag */
		hpts->overidden_sleep = 0;
		hpts->p_on_min_sleep = 0;
	}
	hpts->p_hpts_active = 0;
	sb = FUNC12(tv);
	if (tcp_hpts_callout_skip_swi == 0) {
		FUNC7(&hpts->co, sb, 0,
		    hpts_timeout_swi, hpts, hpts->p_cpu,
		    (C_DIRECT_EXEC | FUNC0(tcp_hpts_precision)));
	} else {
		FUNC7(&hpts->co, sb, 0,
		    hpts_timeout_dir, hpts,
		    hpts->p_cpu,
		    FUNC0(tcp_hpts_precision));
	}
	hpts->p_direct_wake = 0;
	FUNC10(&hpts->p_mtx);
}