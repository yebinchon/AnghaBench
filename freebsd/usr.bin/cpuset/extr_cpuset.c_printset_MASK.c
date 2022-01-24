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
struct bitset {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,struct bitset*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct bitset *mask, int size)
{
	int once;
	int bit;

	for (once = 0, bit = 0; bit < size; bit++) {
		if (FUNC0(size, bit, mask)) {
			if (once == 0) {
				FUNC1("%d", bit);
				once = 1;
			} else
				FUNC1(", %d", bit);
		}
	}
	FUNC1("\n");
}