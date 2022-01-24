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
struct shallow_info {int dummy; } ;
struct command {char* error_string; struct command* next; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct command*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  transaction ; 
 char* FUNC7 (struct command*,struct shallow_info*) ; 

__attribute__((used)) static void FUNC8(struct command *commands,
					struct shallow_info *si)
{
	struct command *cmd;
	struct strbuf err = STRBUF_INIT;

	for (cmd = commands; cmd; cmd = cmd->next) {
		if (!FUNC4(cmd))
			continue;

		transaction = FUNC0(&err);
		if (!transaction) {
			FUNC3("%s", err.buf);
			FUNC6(&err);
			cmd->error_string = "transaction failed to start";
			continue;
		}

		cmd->error_string = FUNC7(cmd, si);

		if (!cmd->error_string
		    && FUNC1(transaction, &err)) {
			FUNC3("%s", err.buf);
			FUNC6(&err);
			cmd->error_string = "failed to update ref";
		}
		FUNC2(transaction);
	}
	FUNC5(&err);
}