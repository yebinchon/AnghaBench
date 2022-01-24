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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  block_head_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(block_head_t *pa, block_head_t *pb)
{
	uint64_t sa = FUNC3(pa);
	uint64_t sb = FUNC3(pb);
	uint64_t s;
	uint64_t x;
	uint64_t y;
	uint64_t n;

	s = (sa > sb) ? sa : sb;

	for (y = x = 0; x != s; x++) {
		char cha = FUNC1(pa, x) & 0xFF;
		char chb = FUNC1(pb, x) & 0xFF;

		if (cha != chb) {
			int nonspace;

			/* false positive */
			if (cha == '\n' && chb == 0 && x == sa - 1)
				return (0);

			n = x - y;
			FUNC2("Style error:\n");
			nonspace = 0;
			for (n = y; n < sa; n++) {
				char ch = FUNC1(pa, n) & 0xFF;

				if (nonspace && ch == '\n')
					break;
				FUNC2("%c", ch);
				if (!FUNC0(ch))
					nonspace = 1;
			}
			FUNC2("\n");
			FUNC2("Style corrected:\n");
			nonspace = 0;
			for (n = y; n < sb; n++) {
				char ch = FUNC1(pb, n) & 0xFF;

				if (nonspace && ch == '\n')
					break;
				FUNC2("%c", ch);
				if (!FUNC0(ch))
					nonspace = 1;
			}
			FUNC2("\n");
			for (n = y; n != x; n++) {
				if ((FUNC1(pa, n) & 0xFF) == '\t')
					FUNC2("\t");
				else
					FUNC2(" ");
			}
			FUNC2("^ %sdifference%s\n",
			    (FUNC0(cha) || FUNC0(chb)) ? "whitespace " : "",
			    (x >= sa || x >= sb) ? " in the end of a block" : "");
			return (1);
		} else if (cha == '\n') {
			y = x + 1;
		}
	}
	return (0);
}