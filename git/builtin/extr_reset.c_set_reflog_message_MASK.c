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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static void FUNC3(struct strbuf *sb, const char *action,
			       const char *rev)
{
	const char *rla = FUNC0("GIT_REFLOG_ACTION");

	FUNC2(sb);
	if (rla)
		FUNC1(sb, "%s: %s", rla, action);
	else if (rev)
		FUNC1(sb, "reset: moving to %s", rev);
	else
		FUNC1(sb, "reset: %s", action);
}