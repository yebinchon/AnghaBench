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
struct hashmap_iter {int dummy; } ;
struct hashmap {int do_count_items; unsigned int private_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hashmap*,struct hashmap_iter*) ; 
 scalar_t__ FUNC1 (struct hashmap_iter*) ; 

__attribute__((used)) static inline void FUNC2(struct hashmap *map)
{
	unsigned int n = 0;
	struct hashmap_iter iter;

	if (map->do_count_items)
		return;

	FUNC0(map, &iter);
	while (FUNC1(&iter))
		n++;

	map->do_count_items = 1;
	map->private_size = n;
}