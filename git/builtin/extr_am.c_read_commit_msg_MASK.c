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
struct strbuf {int dummy; } ;
struct am_state {int /*<<< orphan*/  msg_len; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct strbuf*,struct am_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static int FUNC4(struct am_state *state)
{
	struct strbuf sb = STRBUF_INIT;

	FUNC0(!state->msg);

	if (FUNC1(&sb, state, "final-commit", 0) < 0) {
		FUNC3(&sb);
		return -1;
	}

	state->msg = FUNC2(&sb, &state->msg_len);
	return 0;
}