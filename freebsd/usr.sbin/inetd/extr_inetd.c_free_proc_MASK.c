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
struct procinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct procinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct procinfo*) ; 
 int /*<<< orphan*/  pr_link ; 

__attribute__((used)) static void
FUNC2(struct procinfo *proc)
{
	if (proc == NULL)
		return;
	FUNC0(proc, pr_link);
	FUNC1(proc);
}