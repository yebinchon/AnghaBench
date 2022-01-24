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
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,struct object_id*) ; 
 struct commit* FUNC1 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC2 (struct commit*) ; 
 int /*<<< orphan*/  the_repository ; 

struct commit *FUNC3(const char *name)
{
	struct object_id oid;
	struct commit *commit;

	if (FUNC0(name, &oid))
		return NULL;
	commit = FUNC1(the_repository, &oid);
	if (FUNC2(commit))
		return NULL;
	return commit;
}