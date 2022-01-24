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
 int* de85 ; 
 int FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*) ; 

int FUNC5(char *dst, const char *buffer, int len)
{
	FUNC1();

	FUNC4("decode 85 <%.*s>", len / 4 * 5, buffer);
	while (len) {
		unsigned acc = 0;
		int de, cnt = 4;
		unsigned char ch;
		do {
			ch = *buffer++;
			de = de85[ch];
			if (--de < 0)
				return FUNC0("invalid base85 alphabet %c", ch);
			acc = acc * 85 + de;
		} while (--cnt);
		ch = *buffer++;
		de = de85[ch];
		if (--de < 0)
			return FUNC0("invalid base85 alphabet %c", ch);
		/* Detect overflow. */
		if (0xffffffff / 85 < acc ||
		    0xffffffff - de < (acc *= 85))
			return FUNC0("invalid base85 sequence %.5s", buffer-5);
		acc += de;
		FUNC3(" %08x", acc);

		cnt = (len < 4) ? len : 4;
		len -= cnt;
		do {
			acc = (acc << 8) | (acc >> 24);
			*dst++ = acc;
		} while (--cnt);
	}
	FUNC2("\n");

	return 0;
}