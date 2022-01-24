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
struct target {TYPE_1__* t_conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  conf_targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct target*) ; 
 int /*<<< orphan*/  t_next ; 

void
FUNC2(struct target *targ)
{

	FUNC0(&targ->t_conf->conf_targets, targ, t_next);
	FUNC1(targ);
}