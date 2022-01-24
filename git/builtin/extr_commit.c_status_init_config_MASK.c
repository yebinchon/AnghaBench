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
struct wt_status {int /*<<< orphan*/  hints; } ;
typedef  int /*<<< orphan*/  config_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  advice_status_hints ; 
 int /*<<< orphan*/  FUNC0 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wt_status*) ; 

__attribute__((used)) static void FUNC4(struct wt_status *s, config_fn_t fn)
{
	FUNC3(the_repository, s);
	FUNC2();
	FUNC1(fn, s);
	FUNC0(s);
	s->hints = advice_status_hints; /* must come after git_config() */
}