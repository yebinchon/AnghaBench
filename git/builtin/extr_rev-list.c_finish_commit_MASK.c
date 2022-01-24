#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct commit {int /*<<< orphan*/ * parents; } ;
struct TYPE_2__ {int /*<<< orphan*/  parsed_objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_repository ; 

__attribute__((used)) static void FUNC2(struct commit *commit)
{
	if (commit->parents) {
		FUNC1(commit->parents);
		commit->parents = NULL;
	}
	FUNC0(the_repository->parsed_objects,
			   commit);
}