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
struct am_state {int /*<<< orphan*/  author_date; int /*<<< orphan*/  author_email; int /*<<< orphan*/  author_name; } ;

/* Variables and functions */
 char* FUNC0 (struct am_state*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct am_state *state)
{
	const char *filename = FUNC0(state, "author-script");

	FUNC1(!state->author_name);
	FUNC1(!state->author_email);
	FUNC1(!state->author_date);

	return FUNC2(filename, &state->author_name,
				  &state->author_email, &state->author_date, 1);
}