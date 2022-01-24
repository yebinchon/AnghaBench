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
struct trussinfo {int /*<<< orphan*/ * curthread; } ;
struct procinfo {int /*<<< orphan*/  threadlist; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 struct procinfo* FUNC3 (struct trussinfo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct trussinfo *info, pid_t pid)
{
	struct procinfo *p;

	p = FUNC3(info, pid);
	FUNC2(p != NULL);

	info->curthread = FUNC0(&p->threadlist);
	FUNC2(info->curthread != NULL);
	FUNC2(FUNC1(info->curthread, entries) == NULL);
}