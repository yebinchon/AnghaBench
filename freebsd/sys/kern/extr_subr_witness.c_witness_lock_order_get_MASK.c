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
struct witness_lock_order_key {size_t from; size_t to; } ;
struct witness_lock_order_data {struct witness_lock_order_data* wlod_next; int /*<<< orphan*/  wlod_key; } ;
struct witness {size_t w_index; } ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_2__ {unsigned int wloh_size; struct witness_lock_order_data** wloh_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int WITNESS_LOCK_ORDER_KNOWN ; 
 TYPE_1__ w_lohash ; 
 int** w_rmatrix ; 
 unsigned int FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct witness_lock_order_key*) ; 

__attribute__((used)) static struct witness_lock_order_data *
FUNC4(struct witness *parent, struct witness *child)
{
	struct witness_lock_order_data *data = NULL;
	struct witness_lock_order_key key;
	unsigned int hash;

	FUNC0(parent != NULL && child != NULL);
	key.from = parent->w_index;
	key.to = child->w_index;
	FUNC1(key.from);
	FUNC1(key.to);
	if ((w_rmatrix[parent->w_index][child->w_index]
	    & WITNESS_LOCK_ORDER_KNOWN) == 0)
		goto out;

	hash = FUNC2((const char*)&key,
	    sizeof(key)) % w_lohash.wloh_size;
	data = w_lohash.wloh_array[hash];
	while (data != NULL) {
		if (FUNC3(&data->wlod_key, &key))
			break;
		data = data->wlod_next;
	}

out:
	return (data);
}