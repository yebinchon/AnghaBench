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
typedef  int /*<<< orphan*/  u_char ;
struct tty {int dummy; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int MAMBOBURSTLEN ; 
 int /*<<< orphan*/  MAMBO_CONSOLE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (struct tty*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct tty *tp)
{
	int len;
	u_char buf[MAMBOBURSTLEN];

	for (;;) {
		len = FUNC1(tp, buf, sizeof buf);
		if (len == 0)
			break;
		FUNC0(MAMBO_CONSOLE_WRITE, buf, (register_t)len, 1UL);
	}
}