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
struct commit_name {char const* head_name; int generation; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 struct commit_name** FUNC0 (int /*<<< orphan*/ *,struct commit*) ; 
 int /*<<< orphan*/  name_slab ; 
 struct commit_name* FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct commit *commit, const char *head_name, int nth)
{
	struct commit_name *name;

	name = *FUNC0(&name_slab, commit);
	if (!name) {
		name = FUNC1(sizeof(*name));
		*FUNC0(&name_slab, commit) = name;
	}
	name->head_name = head_name;
	name->generation = nth;
}