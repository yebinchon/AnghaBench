#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct nlm_host {int /*<<< orphan*/  nh_lock; int /*<<< orphan*/  nh_finished; int /*<<< orphan*/  nh_granted; } ;
struct TYPE_4__ {int /*<<< orphan*/  cookie; } ;
struct nlm_async_lock {scalar_t__ af_expiretime; TYPE_2__ af_granted; TYPE_1__* af_host; } ;
struct TYPE_3__ {int /*<<< orphan*/  nh_sysid; int /*<<< orphan*/  nh_caller_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct nlm_async_lock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlm_async_lock* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nlm_async_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  af_link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nlm_async_lock*) ; 
 scalar_t__ time_uptime ; 

__attribute__((used)) static void
FUNC8(struct nlm_host *host)
{
	struct nlm_async_lock *af;
	time_t uptime = time_uptime;

	FUNC3(&host->nh_lock);
	while ((af = FUNC1(&host->nh_granted)) != NULL
	    && uptime >= af->af_expiretime) {
		FUNC0(2, "NLM: async lock %p for %s (sysid %d) expired,"
		    " cookie %d:%d\n", af, af->af_host->nh_caller_name,
		    af->af_host->nh_sysid, FUNC6(&af->af_granted.cookie),
		    FUNC5(&af->af_granted.cookie));
		FUNC2(&host->nh_granted, af, af_link);
		FUNC4(&host->nh_lock);
		FUNC7(af);
		FUNC3(&host->nh_lock);
	}
	while ((af = FUNC1(&host->nh_finished)) != NULL) {
		FUNC2(&host->nh_finished, af, af_link);
		FUNC4(&host->nh_lock);
		FUNC7(af);
		FUNC3(&host->nh_lock);
	}
	FUNC4(&host->nh_lock);
}