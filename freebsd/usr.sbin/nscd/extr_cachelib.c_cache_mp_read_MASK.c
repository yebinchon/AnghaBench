#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cache_mp_read_session_ {TYPE_1__* current_item; } ;
struct TYPE_3__ {size_t value_size; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct cache_mp_read_session_*,char*,size_t*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct cache_mp_read_session_*,char*,size_t*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 

int
FUNC5(struct cache_mp_read_session_ *rs, char *data, size_t *data_size)
{

	FUNC1(cache_mp_read);
	FUNC3(rs != NULL);

	if (rs->current_item == NULL) {
		FUNC2(cache_mp_read);
		return (-1);
	}

	if (rs->current_item->value_size > *data_size) {
		*data_size = rs->current_item->value_size;
		if (data == NULL) {
			FUNC2(cache_mp_read);
			return (0);
		}

		FUNC2(cache_mp_read);
		return (-2);
	}

	*data_size = rs->current_item->value_size;
	FUNC4(data, rs->current_item->value, rs->current_item->value_size);
	rs->current_item = FUNC0(rs->current_item, entries);

	FUNC2(cache_mp_read);
	return (0);
}