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

/* Variables and functions */
 int UMA_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*),int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  uma_callout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zone_timeout ; 

__attribute__((used)) static void
FUNC3(void *unused)
{
	FUNC0();
	FUNC2(zone_timeout);

	/* Reschedule this event */
	FUNC1(&uma_callout, UMA_TIMEOUT * hz, uma_timeout, NULL);
}