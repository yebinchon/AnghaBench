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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int trace_flags ; 

void
FUNC1(const char *s)
{
	char mode = 0;
	unsigned int f = 0;

	if (*s == '+' || *s == '-')
		mode = *s++;
	while (*s)
		f |= FUNC0(*s++);
	switch(mode) {
	case 0:
		trace_flags = f;
		break;
	case '+':
		trace_flags |= f;
		break;
	case '-':
		trace_flags &= ~f;
		break;
	}
}