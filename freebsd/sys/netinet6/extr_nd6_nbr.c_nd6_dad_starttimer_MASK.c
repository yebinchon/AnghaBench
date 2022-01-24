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
struct dadq {int /*<<< orphan*/  dad_timer_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC2 (struct dadq*) ; 
 scalar_t__ nd6_dad_timer ; 

__attribute__((used)) static void
FUNC3(struct dadq *dp, int ticks, int send_ns)
{

	FUNC0();

	if (send_ns != 0)
		FUNC2(dp);
	FUNC1(&dp->dad_timer_ch, ticks,
	    (void (*)(void *))nd6_dad_timer, (void *)dp);
}