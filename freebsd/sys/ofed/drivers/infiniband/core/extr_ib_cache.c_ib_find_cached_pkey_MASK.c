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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct ib_pkey_cache {int table_len; int* table; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct ib_pkey_cache** pkey_cache; } ;
struct ib_device {TYPE_1__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ib_device*) ; 
 scalar_t__ FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ib_device *device,
			u8                port_num,
			u16               pkey,
			u16              *index)
{
	struct ib_pkey_cache *cache;
	unsigned long flags;
	int i;
	int ret = -ENOENT;
	int partial_ix = -1;

	if (port_num < FUNC1(device) || port_num > FUNC0(device))
		return -EINVAL;

	FUNC2(&device->cache.lock, flags);

	cache = device->cache.pkey_cache[port_num - FUNC1(device)];

	*index = -1;

	for (i = 0; i < cache->table_len; ++i)
		if ((cache->table[i] & 0x7fff) == (pkey & 0x7fff)) {
			if (cache->table[i] & 0x8000) {
				*index = i;
				ret = 0;
				break;
			} else
				partial_ix = i;
		}

	if (ret && partial_ix >= 0) {
		*index = partial_ix;
		ret = 0;
	}

	FUNC3(&device->cache.lock, flags);

	return ret;
}