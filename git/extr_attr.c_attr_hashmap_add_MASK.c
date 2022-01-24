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
struct attr_hash_entry {char const* key; size_t keylen; int /*<<< orphan*/  ent; void* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct attr_hashmap*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t) ; 
 struct attr_hash_entry* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct attr_hashmap *map,
			     const char *key, size_t keylen,
			     void *value)
{
	struct attr_hash_entry *e;

	if (!map->map.tablesize)
		FUNC0(map);

	e = FUNC4(sizeof(struct attr_hash_entry));
	FUNC2(&e->ent, FUNC3(key, keylen));
	e->key = key;
	e->keylen = keylen;
	e->value = value;

	FUNC1(&map->map, &e->ent);
}