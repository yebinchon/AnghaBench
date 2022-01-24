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
struct tree_desc {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 void* FUNC1 (struct repository*,struct tree_desc*,struct object_id*) ; 
 scalar_t__ FUNC2 (struct repository*,char const*,struct object_id*) ; 

__attribute__((used)) static void *FUNC3(struct repository *r,
				 struct tree_desc *desc,
				 const char *rev)
{
	struct object_id oid;
	void *buf;

	if (FUNC2(r, rev, &oid))
		FUNC0("unknown rev %s", rev);
	buf = FUNC1(r, desc, &oid);
	if (!buf)
		FUNC0("%s is not a tree", rev);
	return buf;
}