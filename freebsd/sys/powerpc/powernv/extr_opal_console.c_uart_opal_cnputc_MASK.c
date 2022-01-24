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
struct consdev {int /*<<< orphan*/  cn_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_POLL_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC2(struct consdev *cp, int c)
{
	unsigned char ch = c;
	int a;

	if (1) {
		/* Clear FIFO if needed. Must be repeated few times. */
		for (a = 0; a < 20; a++) {
			FUNC0(OPAL_POLL_EVENTS, NULL);
		}
	}
	FUNC1(cp->cn_arg, &ch, 1);
}