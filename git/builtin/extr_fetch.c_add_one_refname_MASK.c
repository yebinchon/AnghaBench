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
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hashmap*,char const*,struct object_id const*) ; 

__attribute__((used)) static int FUNC1(const char *refname,
			   const struct object_id *oid,
			   int flag, void *cbdata)
{
	struct hashmap *refname_map = cbdata;

	(void) FUNC0(refname_map, refname, oid);
	return 0;
}