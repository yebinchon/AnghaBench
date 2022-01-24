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
struct shortlog {int dummy; } ;
struct rev_info {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct commit* FUNC2 (struct rev_info*) ; 
 scalar_t__ FUNC3 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct shortlog*,struct commit*) ; 

__attribute__((used)) static void FUNC5(struct rev_info *rev, struct shortlog *log)
{
	struct commit *commit;

	if (FUNC3(rev))
		FUNC1(FUNC0("revision walk setup failed"));
	while ((commit = FUNC2(rev)) != NULL)
		FUNC4(log, commit);
}