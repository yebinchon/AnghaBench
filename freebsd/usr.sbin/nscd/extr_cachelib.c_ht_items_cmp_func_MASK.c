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
struct cache_ht_item_data_ {size_t key_size; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC2(const void *p1, const void *p2)
{
    	struct cache_ht_item_data_ *hp1, *hp2;
	size_t min_size;
	int result;

	hp1 = (struct cache_ht_item_data_ *)p1;
	hp2 = (struct cache_ht_item_data_ *)p2;

	FUNC0(hp1->key != NULL);
	FUNC0(hp2->key != NULL);

	if (hp1->key_size != hp2->key_size) {
		min_size = (hp1->key_size < hp2->key_size) ? hp1->key_size :
			hp2->key_size;
		result = FUNC1(hp1->key, hp2->key, min_size);

		if (result == 0)
			return ((hp1->key_size < hp2->key_size) ? -1 : 1);
		else
			return (result);
	} else
		return (FUNC1(hp1->key, hp2->key, hp1->key_size));
}