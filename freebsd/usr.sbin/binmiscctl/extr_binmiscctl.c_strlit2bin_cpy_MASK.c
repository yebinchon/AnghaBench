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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(uint8_t *d, char *s, size_t size)
{
	int c;
	size_t cnt = 0;

	while((c = *s++) != '\0') {
		if (c == '\\') {
			/* Do '\' escapes. */
			switch (*s) {
			case '\\':
				*d++ = '\\';
				break;

			case 'x':
				s++;
				c = FUNC1(*s++);
				*d = (c - (FUNC0(c) ? '0' : ('A' - 10))) << 4;
				c = FUNC1(*s++);
				*d++ |= c - (FUNC0(c) ? '0' : ('A' - 10));
				break;

			default:
				return (-1);
			}
		} else
			*d++ = c;

		if (++cnt > size)
			return (-1);
	}

	return (cnt);
}