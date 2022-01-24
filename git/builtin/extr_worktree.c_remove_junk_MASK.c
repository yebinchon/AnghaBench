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
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  is_junk ; 
 scalar_t__ junk_git_dir ; 
 scalar_t__ junk_pid ; 
 scalar_t__ junk_work_tree ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct strbuf sb = STRBUF_INIT;
	if (!is_junk || FUNC0() != junk_pid)
		return;
	if (junk_git_dir) {
		FUNC2(&sb, junk_git_dir);
		FUNC1(&sb, 0);
		FUNC4(&sb);
	}
	if (junk_work_tree) {
		FUNC2(&sb, junk_work_tree);
		FUNC1(&sb, 0);
	}
	FUNC3(&sb);
}