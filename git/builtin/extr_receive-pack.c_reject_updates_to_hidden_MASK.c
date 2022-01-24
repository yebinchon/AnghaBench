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
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct command {char* error_string; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  ref_name; struct command* next; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,size_t) ; 

__attribute__((used)) static void FUNC6(struct command *commands)
{
	struct strbuf refname_full = STRBUF_INIT;
	size_t prefix_len;
	struct command *cmd;

	FUNC3(&refname_full, FUNC0());
	prefix_len = refname_full.len;

	for (cmd = commands; cmd; cmd = cmd->next) {
		if (cmd->error_string)
			continue;

		FUNC5(&refname_full, prefix_len);
		FUNC3(&refname_full, cmd->ref_name);

		if (!FUNC2(cmd->ref_name, refname_full.buf))
			continue;
		if (FUNC1(&cmd->new_oid))
			cmd->error_string = "deny deleting a hidden ref";
		else
			cmd->error_string = "deny updating a hidden ref";
	}

	FUNC4(&refname_full);
}