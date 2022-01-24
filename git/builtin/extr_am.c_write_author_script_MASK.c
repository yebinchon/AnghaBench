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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct am_state {int /*<<< orphan*/  author_date; int /*<<< orphan*/  author_email; int /*<<< orphan*/  author_name; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct am_state const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct am_state *state)
{
	struct strbuf sb = STRBUF_INIT;

	FUNC2(&sb, "GIT_AUTHOR_NAME=");
	FUNC0(&sb, state->author_name);
	FUNC1(&sb, '\n');

	FUNC2(&sb, "GIT_AUTHOR_EMAIL=");
	FUNC0(&sb, state->author_email);
	FUNC1(&sb, '\n');

	FUNC2(&sb, "GIT_AUTHOR_DATE=");
	FUNC0(&sb, state->author_date);
	FUNC1(&sb, '\n');

	FUNC4(state, "author-script", sb.buf);

	FUNC3(&sb);
}