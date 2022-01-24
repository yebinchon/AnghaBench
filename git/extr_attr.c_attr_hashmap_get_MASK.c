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
struct TYPE_2__ {int /*<<< orphan*/  tablesize; } ;
struct attr_hashmap {TYPE_1__ map; } ;
struct attr_hash_entry {char const* key; size_t keylen; void* value; int /*<<< orphan*/  ent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct attr_hashmap*) ; 
 int /*<<< orphan*/  ent ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct attr_hash_entry* FUNC2 (TYPE_1__*,struct attr_hash_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t) ; 

__attribute__((used)) static void *FUNC4(struct attr_hashmap *map,
			      const char *key, size_t keylen)
{
	struct attr_hash_entry k;
	struct attr_hash_entry *e;

	if (!map->map.tablesize)
		FUNC0(map);

	FUNC1(&k.ent, FUNC3(key, keylen));
	k.key = key;
	k.keylen = keylen;
	e = FUNC2(&map->map, &k, ent, NULL);

	return e ? e->value : NULL;
}