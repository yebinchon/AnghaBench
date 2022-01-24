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
struct nat64lsn_job_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stats; } ;
struct nat64lsn_cfg {int /*<<< orphan*/  jcallout; int /*<<< orphan*/  jlen; TYPE_1__ base; int /*<<< orphan*/  jhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nat64lsn_job_item*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  jrequests ; 
 int /*<<< orphan*/  nat64lsn_do_request ; 

__attribute__((used)) static void
FUNC6(struct nat64lsn_cfg *cfg, struct nat64lsn_job_item *ji)
{

	FUNC0();
	FUNC3(&cfg->jhead, ji, entries);
	FUNC2(&cfg->base.stats, jrequests);
	cfg->jlen++;

	if (FUNC4(&cfg->jcallout) == 0)
		FUNC5(&cfg->jcallout, 1, nat64lsn_do_request, cfg);
	FUNC1();
}