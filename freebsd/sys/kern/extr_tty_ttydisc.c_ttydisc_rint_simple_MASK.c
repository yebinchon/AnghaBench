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
struct tty {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty*) ; 
 scalar_t__ FUNC1 (struct tty*,char const,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct tty*,void const*,size_t) ; 

size_t
FUNC3(struct tty *tp, const void *buf, size_t len)
{
	const char *cbuf;

	if (FUNC0(tp))
		return (FUNC2(tp, buf, len));

	for (cbuf = buf; len-- > 0; cbuf++) {
		if (FUNC1(tp, *cbuf, 0) != 0)
			break;
	}

	return (cbuf - (const char *)buf);
}