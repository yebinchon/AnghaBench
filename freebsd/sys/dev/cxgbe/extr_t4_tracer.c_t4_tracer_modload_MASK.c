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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  t4_cloner ; 
 int /*<<< orphan*/  t4_cloner_create ; 
 int /*<<< orphan*/  t4_cloner_destroy ; 
 int /*<<< orphan*/  t4_cloner_match ; 
 int /*<<< orphan*/  t4_cloner_name ; 
 int /*<<< orphan*/  t4_trace_lock ; 

void
FUNC2()
{

	FUNC1(&t4_trace_lock, "T4/T5 tracer lock");
	t4_cloner = FUNC0(t4_cloner_name, 0, t4_cloner_match,
	    t4_cloner_create, t4_cloner_destroy);
}