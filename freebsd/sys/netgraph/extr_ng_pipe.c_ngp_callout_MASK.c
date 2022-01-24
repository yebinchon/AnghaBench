#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {int /*<<< orphan*/ * hook; } ;
struct TYPE_4__ {TYPE_2__ lower; TYPE_2__ upper; scalar_t__ timer_scheduled; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct timeval*) ; 

__attribute__((used)) static void
FUNC3(node_p node, hook_p hook, void *arg1, int arg2)
{
	const priv_p priv = FUNC0(node);
	struct timeval now;

	priv->timer_scheduled = 0;
	FUNC1(&now);
	if (priv->upper.hook != NULL)
		FUNC2(&priv->upper, &now);
	if (priv->lower.hook != NULL)
		FUNC2(&priv->lower, &now);
}