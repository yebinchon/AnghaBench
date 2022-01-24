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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct command {int /*<<< orphan*/  error_string; int /*<<< orphan*/  ref_name; struct command* next; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 scalar_t__ use_sideband ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct command *commands, const char *unpack_status)
{
	struct command *cmd;
	struct strbuf buf = STRBUF_INIT;

	FUNC1(&buf, "unpack %s\n",
			 unpack_status ? unpack_status : "ok");
	for (cmd = commands; cmd; cmd = cmd->next) {
		if (!cmd->error_string)
			FUNC1(&buf, "ok %s\n",
					 cmd->ref_name);
		else
			FUNC1(&buf, "ng %s %s\n",
					 cmd->ref_name, cmd->error_string);
	}
	FUNC0(&buf);

	if (use_sideband)
		FUNC2(1, 1, buf.buf, buf.len, use_sideband);
	else
		FUNC4(1, buf.buf, buf.len);
	FUNC3(&buf);
}