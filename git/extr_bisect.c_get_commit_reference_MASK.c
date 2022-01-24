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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct commit* FUNC2 (struct repository*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 

__attribute__((used)) static struct commit *FUNC4(struct repository *r,
					   const struct object_id *oid)
{
	struct commit *c = FUNC2(r, oid);
	if (!c)
		FUNC1(FUNC0("Not a valid commit name %s"), FUNC3(oid));
	return c;
}