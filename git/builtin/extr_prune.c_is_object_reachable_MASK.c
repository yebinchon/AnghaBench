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
struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int flags; } ;

/* Variables and functions */
 int SEEN ; 
 struct object* FUNC0 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC2(const struct object_id *oid,
			       struct rev_info *revs)
{
	struct object *obj;

	FUNC1(revs);

	obj = FUNC0(the_repository, oid);
	return obj && (obj->flags & SEEN);
}