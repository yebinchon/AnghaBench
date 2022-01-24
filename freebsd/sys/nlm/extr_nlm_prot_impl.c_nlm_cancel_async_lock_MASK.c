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
struct nlm_host {int /*<<< orphan*/  nh_lock; int /*<<< orphan*/  nh_pending; int /*<<< orphan*/  nh_sysid; int /*<<< orphan*/  nh_caller_name; } ;
struct nlm_async_lock {int /*<<< orphan*/  af_task; int /*<<< orphan*/  af_cookie; int /*<<< orphan*/  af_fl; int /*<<< orphan*/  af_vp; struct nlm_host* af_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_CANCEL ; 
 int /*<<< orphan*/  F_REMOTE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct nlm_async_lock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nlm_async_lock*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  af_link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nlm_async_lock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static int
FUNC8(struct nlm_async_lock *af)
{
	struct nlm_host *host = af->af_host;
	int error;

	FUNC3(&host->nh_lock, MA_OWNED);

	FUNC5(&host->nh_lock);

	error = FUNC2(af->af_vp, NULL, F_CANCEL, &af->af_fl,
	    F_REMOTE, NULL, &af->af_cookie);

	if (error) {
		/*
		 * We failed to cancel - make sure our callback has
		 * completed before we continue.
		 */
		FUNC7(taskqueue_thread, &af->af_task);
	}

	FUNC4(&host->nh_lock);
	
	if (!error) {
		FUNC0(2, "NLM: async lock %p for %s (sysid %d) "
		    "cancelled\n", af, host->nh_caller_name, host->nh_sysid);

		/*
		 * Remove from the nh_pending list and free now that
		 * we are safe from the callback.
		 */
		FUNC1(&host->nh_pending, af, af_link);
		FUNC5(&host->nh_lock);
		FUNC6(af);
		FUNC4(&host->nh_lock);
	}

	return (error);
}