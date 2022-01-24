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
struct branch_info {int /*<<< orphan*/  path; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERPRET_BRANCH_LOCAL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct branch_info *branch)
{
	struct strbuf buf = STRBUF_INIT;

	FUNC0(&buf, branch->name, INTERPRET_BRANCH_LOCAL);
	if (FUNC3(buf.buf, branch->name))
		branch->name = FUNC4(buf.buf);
	FUNC2(&buf, 0, 0, "refs/heads/", 11);
	branch->path = FUNC1(&buf, NULL);
}