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
 int /*<<< orphan*/  A_STANDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ hascolor ; 

__attribute__((used)) static void
FUNC3(int on)
{
	if (on) {
		if(hascolor) {
			FUNC2(FUNC0(1));
		} else {
			FUNC2(A_STANDOUT);
		}
	} else {
		if(hascolor) {
			FUNC2(FUNC0(2));
		} else {
			FUNC1(A_STANDOUT);
		}
	}
}