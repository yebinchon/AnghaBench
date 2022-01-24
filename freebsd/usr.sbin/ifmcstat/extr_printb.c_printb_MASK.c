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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

void
FUNC3(const char *s, unsigned int v, const char *bits)
{
	int i, any = 0;
	char c;

	FUNC0(bits != NULL);
	if (*bits == 8)
		FUNC1("%s=%o", s, v);
	else
		FUNC1("%s=%x", s, v);
	bits++;
	if (bits) {
		FUNC2('<');
		while ((i = *bits++) != '\0') {
			if (v & (1 << (i-1))) {
				if (any)
					FUNC2(',');
				any = 1;
				for (; (c = *bits) > 32; bits++)
					FUNC2(c);
			} else
				for (; *bits > 32; bits++)
					;
		}
		FUNC2('>');
	}
}