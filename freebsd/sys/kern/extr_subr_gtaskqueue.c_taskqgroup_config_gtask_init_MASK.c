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
struct grouptask {int dummy; } ;
typedef  int /*<<< orphan*/  gtask_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grouptask*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  qgroup_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct grouptask*,struct grouptask*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

void
FUNC2(void *ctx, struct grouptask *gtask, gtask_fn_t *fn,
    const char *name)
{

	FUNC0(gtask, 0, fn, ctx);
	FUNC1(qgroup_config, gtask, gtask, NULL, NULL, name);
}