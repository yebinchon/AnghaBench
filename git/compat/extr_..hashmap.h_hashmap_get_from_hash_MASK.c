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
struct hashmap_entry {int dummy; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hashmap_entry*,unsigned int) ; 
 struct hashmap_entry* FUNC1 (struct hashmap const*,struct hashmap_entry*,void const*) ; 

__attribute__((used)) static inline struct hashmap_entry *FUNC2(
					const struct hashmap *map,
					unsigned int hash,
					const void *keydata)
{
	struct hashmap_entry key;
	FUNC0(&key, hash);
	return FUNC1(map, &key, keydata);
}