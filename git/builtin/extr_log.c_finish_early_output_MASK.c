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
struct rev_info {int /*<<< orphan*/  commits; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rev_info *rev)
{
	int n = FUNC0(rev->commits);
	FUNC2(SIGALRM, SIG_IGN);
	FUNC1(rev, "done", n);
}