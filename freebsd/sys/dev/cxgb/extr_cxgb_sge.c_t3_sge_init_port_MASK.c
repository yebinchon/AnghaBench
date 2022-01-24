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
struct port_info {int /*<<< orphan*/  timer_reclaim_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct port_info*) ; 
 int /*<<< orphan*/  sge_timer_reclaim ; 

int
FUNC1(struct port_info *pi)
{
	FUNC0(&pi->timer_reclaim_task, 0, sge_timer_reclaim, pi);
	return (0);
}