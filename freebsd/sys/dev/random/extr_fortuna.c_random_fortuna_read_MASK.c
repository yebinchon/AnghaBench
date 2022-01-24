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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  newkey ;
struct TYPE_2__ {int /*<<< orphan*/  fs_key; int /*<<< orphan*/  fs_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORTUNA_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int RANDOM_KEYSIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ fortuna_concurrent_read ; 
 TYPE_1__ fortuna_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(uint8_t *buf, size_t bytecount)
{
	uint8_t newkey[RANDOM_KEYSIZE];

	if (fortuna_concurrent_read) {
		FUNC5(buf, bytecount, newkey);
		goto out;
	}

	FUNC2();
	FUNC0(!FUNC6(fortuna_state.fs_counter), ("FS&K: C != 0"));

	FUNC4(buf, bytecount, newkey,
	    &fortuna_state.fs_counter, &fortuna_state.fs_key, FORTUNA_LOCKED);
	/* Returns unlocked */
	FUNC1();

out:
	FUNC3(newkey, sizeof(newkey));
}