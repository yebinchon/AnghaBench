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
struct promise_raid_conf {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct promise_raid_conf *meta, char *buf)
{
	int i;

	FUNC0(buf, meta->name, 32);
	buf[32] = 0;
	for (i = 31; i >= 0; i--) {
		if (buf[i] > 0x20)
			break;
		buf[i] = 0;
	}
}