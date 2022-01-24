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
typedef  int /*<<< orphan*/  bktr_ptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int 
FUNC2(bktr_ptr_t bktr)
{
	int             t, lock = 0;
	for (t = 0; t < 10; t++) {
		lock = FUNC1(0x0e) & 0x06;
		if (lock == 6) {
			break;
		}
		FUNC0(1000);
	}
	return lock;
}