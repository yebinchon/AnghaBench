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
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KBDC_SEND_DEV_ID ; 
 scalar_t__ KBD_ACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(KBDC kbdc)
{
	int id1, id2;

	FUNC1(kbdc, 10);
	id1 = id2 = -1;
	if (FUNC3(kbdc, KBDC_SEND_DEV_ID) != KBD_ACK)
		return -1;

	FUNC0(10000); 	/* 10 msec delay */
	id1 = FUNC2(kbdc);
	if (id1 != -1)
		id2 = FUNC2(kbdc);

	if ((id1 == -1) || (id2 == -1)) {
		FUNC1(kbdc, 10);
		FUNC4(kbdc);
		FUNC5(kbdc);
		return -1;
	}
	return ((id2 << 8) | id1);
}