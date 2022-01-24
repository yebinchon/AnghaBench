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
struct nat64lsn_job_item {int /*<<< orphan*/  epoch_ctx; int /*<<< orphan*/  pgchunk; int /*<<< orphan*/  portgroups; int /*<<< orphan*/  hosts; int /*<<< orphan*/  jtype; } ;
struct TYPE_2__ {int /*<<< orphan*/  stats; } ;
struct nat64lsn_cfg {scalar_t__ hosts_count; int /*<<< orphan*/  periodic; TYPE_1__ base; int /*<<< orphan*/  vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JTYPE_DESTROY ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PERIODIC_DELAY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  jnomem ; 
 int /*<<< orphan*/  FUNC6 (struct nat64lsn_cfg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC8 (struct nat64lsn_cfg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nat64lsn_job_destroy ; 
 int /*<<< orphan*/  nat64lsn_job_zone ; 
 struct nat64lsn_job_item* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *data)
{
	struct nat64lsn_job_item *ji;
	struct nat64lsn_cfg *cfg;

	cfg = (struct nat64lsn_cfg *) data;
	FUNC2(cfg->vp);
	if (cfg->hosts_count > 0) {
		ji = FUNC9(nat64lsn_job_zone, M_NOWAIT);
		if (ji != NULL) {
			ji->jtype = JTYPE_DESTROY;
			FUNC0(&ji->hosts);
			FUNC0(&ji->portgroups);
			FUNC6(cfg, &ji->hosts);
			FUNC8(cfg, &ji->portgroups);
			ji->pgchunk = FUNC7(cfg);
			FUNC3(&ji->epoch_ctx,
			    nat64lsn_job_destroy);
		} else
			FUNC4(&cfg->base.stats, jnomem);
	}
	FUNC5(&cfg->periodic, hz * PERIODIC_DELAY);
	FUNC1();
}