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
struct refname_hash_entry {int /*<<< orphan*/  ent; int /*<<< orphan*/  oid; } ;
struct object_id {int dummy; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct refname_hash_entry*,char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static struct refname_hash_entry *FUNC6(struct hashmap *map,
						   const char *refname,
						   const struct object_id *oid)
{
	struct refname_hash_entry *ent;
	size_t len = FUNC5(refname);

	FUNC0(ent, refname, refname, len);
	FUNC2(&ent->ent, FUNC4(refname));
	FUNC3(&ent->oid, oid);
	FUNC1(map, &ent->ent);
	return ent;
}