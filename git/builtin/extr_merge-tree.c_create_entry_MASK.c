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
struct merge_list {unsigned int stage; char const* path; unsigned int mode; int /*<<< orphan*/  blob; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 
 struct merge_list* FUNC1 (int,int) ; 

__attribute__((used)) static struct merge_list *FUNC2(unsigned stage, unsigned mode, const struct object_id *oid, const char *path)
{
	struct merge_list *res = FUNC1(1, sizeof(*res));

	res->stage = stage;
	res->path = path;
	res->mode = mode;
	res->blob = FUNC0(the_repository, oid);
	return res;
}