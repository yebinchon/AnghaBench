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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAX_BURST_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tty*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct tty *tp)
{
	u_char buf[MAX_BURST_LEN];
	int len;
	int i;

	for (;;) {
		len = FUNC2(tp, buf, sizeof(buf));
		if (len == 0)
			break;

		FUNC0(len == 1, ("tty error"));

		for (i = 0; i < len; i++)
			FUNC1(buf[i]);
	}
}