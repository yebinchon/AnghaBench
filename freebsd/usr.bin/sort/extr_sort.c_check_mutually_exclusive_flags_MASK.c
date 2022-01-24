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

/* Variables and functions */
 int NUMBER_OF_MUTUALLY_EXCLUSIVE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* mutually_exclusive_flags ; 

__attribute__((used)) static void
FUNC2(char c, bool *mef_flags)
{
	int fo_index, mec;
	bool found_others, found_this;

	found_others = found_this = false;
	fo_index = 0;

	for (int i = 0; i < NUMBER_OF_MUTUALLY_EXCLUSIVE_FLAGS; i++) {
		mec = mutually_exclusive_flags[i];

		if (mec != c) {
			if (mef_flags[i]) {
				if (found_this)
					FUNC0(1, "%c:%c: %s", c, mec, FUNC1(1));
				found_others = true;
				fo_index = i;
			}
		} else {
			if (found_others)
				FUNC0(1, "%c:%c: %s", c, mutually_exclusive_flags[fo_index], FUNC1(1));
			mef_flags[i] = true;
			found_this = true;
		}
	}
}