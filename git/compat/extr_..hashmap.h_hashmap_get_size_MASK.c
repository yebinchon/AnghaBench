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
struct hashmap {unsigned int private_size; scalar_t__ do_count_items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct hashmap *map)
{
	if (map->do_count_items)
		return map->private_size;

	FUNC0("hashmap_get_size: size not set");
	return 0;
}