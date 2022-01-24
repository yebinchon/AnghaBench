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
struct branch_info {int /*<<< orphan*/  name; } ;
struct branch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHEAD_BEHIND_FULL ; 
 struct strbuf STRBUF_INIT ; 
 struct branch* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct branch*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(struct branch_info *new_branch_info)
{
	struct strbuf sb = STRBUF_INIT;
	struct branch *branch = FUNC0(new_branch_info->name);

	if (!FUNC1(branch, &sb, AHEAD_BEHIND_FULL))
		return;
	FUNC2(sb.buf, stdout);
	FUNC3(&sb);
}