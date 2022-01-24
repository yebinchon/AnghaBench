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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int hunkmax ; 
 int out_of_mem ; 
 int /*<<< orphan*/ * p_char ; 
 int /*<<< orphan*/ * p_len ; 
 int /*<<< orphan*/ * p_line ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  using_plan_a ; 

__attribute__((used)) static void
FUNC2(void)
{
	int new_hunkmax = hunkmax * 2;

	if (p_line == NULL || p_len == NULL || p_char == NULL)
		FUNC0("Internal memory allocation error\n");

	p_line = FUNC1(p_line, new_hunkmax * sizeof(char *));
	p_len = FUNC1(p_len, new_hunkmax * sizeof(unsigned short));
	p_char = FUNC1(p_char, new_hunkmax * sizeof(char));

	if (p_line != NULL && p_len != NULL && p_char != NULL) {
		hunkmax = new_hunkmax;
		return;
	}

	if (!using_plan_a)
		FUNC0("out of memory\n");
	out_of_mem = true;	/* whatever is null will be allocated again */
				/* from within plan_a(), of all places */
}