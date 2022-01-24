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
typedef  int /*<<< orphan*/  uint8_t ;
struct file_header {unsigned int height; int /*<<< orphan*/  glyph_count; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static int
FUNC7(struct file_header *fh)
{
	unsigned int gbytes, glyph_count, j, k, total;
	uint8_t *gbuf;

	gbytes = FUNC3(fh->width, 8) * fh->height;
	glyph_count = FUNC0(fh->glyph_count);

	FUNC6("\nstatic uint8_t font_bytes[%u * %u] = {", glyph_count, gbytes);
	total = glyph_count * gbytes;
	gbuf = FUNC4(total);

	if (FUNC1(gbuf, total, 1, stdin) != 1) {
		FUNC5("glyph");
		return (1);
	}

	for (j = 0; j < total; j += 12) {
		for (k = 0; k < 12 && k < total - j; k++) {
			FUNC6(k == 0 ? "\n\t" : " ");
			FUNC6("0x%02hhx,", gbuf[j + k]);
		}
	}

	FUNC2(gbuf);
	FUNC6("\n};\n");

	return (0);
}