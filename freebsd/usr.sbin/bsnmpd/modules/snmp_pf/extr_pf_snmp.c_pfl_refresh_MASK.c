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
struct pfl_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pfl_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pfl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pfl_entry*) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ pf_tick ; 
 int /*<<< orphan*/  pfl_table ; 
 int /*<<< orphan*/  pfl_table_age ; 
 scalar_t__ pfl_table_count ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ started ; 
 scalar_t__ this_tick ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void)
{
	struct pfl_entry *e;

	if (started && this_tick <= pf_tick)
		return (0);

	while (!FUNC0(&pfl_table)) {
		e = FUNC1(&pfl_table);
		FUNC2(&pfl_table, e, link);
		FUNC3(e);
	}
	pfl_table_count = 0;

	if (FUNC4(""))
		goto err;

	pfl_table_age = FUNC5(NULL);
	pf_tick = this_tick;

	return (0);

err:
	while (!FUNC0(&pfl_table)) {
		e = FUNC1(&pfl_table);
		FUNC2(&pfl_table, e, link);
		FUNC3(e);
	}
	pfl_table_count = 0;

	return (-1);
}