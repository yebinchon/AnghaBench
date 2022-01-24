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
struct object_id {int dummy; } ;
struct am_state {int /*<<< orphan*/  cur; int /*<<< orphan*/  orig_commit; scalar_t__ msg_len; int /*<<< orphan*/  msg; int /*<<< orphan*/  author_date; int /*<<< orphan*/  author_email; int /*<<< orphan*/  author_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 int /*<<< orphan*/  FUNC1 (struct am_state*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct object_id*) ; 
 char* FUNC4 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct am_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct am_state*,char*,char*) ; 

__attribute__((used)) static void FUNC9(struct am_state *state)
{
	struct object_id head;

	FUNC0(state->author_name);
	FUNC0(state->author_email);
	FUNC0(state->author_date);
	FUNC0(state->msg);
	state->msg_len = 0;

	FUNC6(FUNC1(state, "author-script"));
	FUNC6(FUNC1(state, "final-commit"));

	FUNC5(&state->orig_commit);
	FUNC6(FUNC1(state, "original-commit"));
	FUNC2(NULL, "REBASE_HEAD", NULL, REF_NO_DEREF);

	if (!FUNC3("HEAD", &head))
		FUNC8(state, "abort-safety", FUNC4(&head));
	else
		FUNC8(state, "abort-safety", "");

	state->cur++;
	FUNC7(state, "next", state->cur);
}