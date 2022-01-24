#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int mid; int hi; scalar_t__ low; } ;
struct TYPE_4__ {long long ll; TYPE_1__ x; } ;
struct uuid_private {scalar_t__* node; int seq; TYPE_2__ time; } ;
struct uuid {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct uuid_private uuid_last ; 
 int /*<<< orphan*/  uuid_mutex ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 size_t FUNC5 () ; 

struct uuid *
FUNC6(struct uuid *store, size_t count)
{
	struct uuid_private uuid;
	uint64_t time;
	size_t n;

	FUNC2(&uuid_mutex);

	FUNC4(uuid.node);
	time = FUNC5();

	if (uuid_last.time.ll == 0LL || uuid_last.node[0] != uuid.node[0] ||
	    uuid_last.node[1] != uuid.node[1] ||
	    uuid_last.node[2] != uuid.node[2])
		uuid.seq = (uint16_t)FUNC0() & 0x3fff;
	else if (uuid_last.time.ll >= time)
		uuid.seq = (uuid_last.seq + 1) & 0x3fff;
	else
		uuid.seq = uuid_last.seq;

	uuid_last = uuid;
	uuid_last.time.ll = (time + count - 1) & ((1LL << 60) - 1LL);

	FUNC3(&uuid_mutex);

	/* Set sequence and variant and deal with byte order. */
	uuid.seq = FUNC1(uuid.seq | 0x8000);

	for (n = 0; n < count; n++) {
		/* Set time and version (=1). */
		uuid.time.x.low = (uint32_t)time;
		uuid.time.x.mid = (uint16_t)(time >> 32);
		uuid.time.x.hi = ((uint16_t)(time >> 48) & 0xfff) | (1 << 12);
		store[n] = *(struct uuid *)&uuid;
		time++;
	}

	return (store);
}