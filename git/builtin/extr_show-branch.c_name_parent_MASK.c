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
struct commit_name {scalar_t__ generation; int /*<<< orphan*/  head_name; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 struct commit_name* FUNC0 (struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct commit *commit, struct commit *parent)
{
	struct commit_name *commit_name = FUNC0(commit);
	struct commit_name *parent_name = FUNC0(parent);
	if (!commit_name)
		return;
	if (!parent_name ||
	    commit_name->generation + 1 < parent_name->generation)
		FUNC1(parent, commit_name->head_name,
			    commit_name->generation + 1);
}