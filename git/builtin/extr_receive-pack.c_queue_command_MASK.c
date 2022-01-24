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
struct command {struct command* next; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  old_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct command*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  ref_name ; 

__attribute__((used)) static struct command **FUNC4(struct command **tail,
				      const char *line,
				      int linelen)
{
	struct object_id old_oid, new_oid;
	struct command *cmd;
	const char *refname;
	int reflen;
	const char *p;

	if (FUNC3(line, &old_oid, &p) ||
	    *p++ != ' ' ||
	    FUNC3(p, &new_oid, &p) ||
	    *p++ != ' ')
		FUNC1("protocol error: expected old/new/ref, got '%s'", line);

	refname = p;
	reflen = linelen - (p - line);
	FUNC0(cmd, ref_name, refname, reflen);
	FUNC2(&cmd->old_oid, &old_oid);
	FUNC2(&cmd->new_oid, &new_oid);
	*tail = cmd;
	return &cmd->next;
}