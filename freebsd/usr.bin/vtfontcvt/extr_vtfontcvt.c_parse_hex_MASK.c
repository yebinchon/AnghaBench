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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int height ; 
 unsigned int FUNC5 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__*,scalar_t__*,scalar_t__*,unsigned int) ; 
 scalar_t__ FUNC9 (char*,char*,unsigned int*) ; 
 char* FUNC10 (char*,char) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 int wbytes ; 
 int width ; 
 scalar_t__* FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(FILE *fp, unsigned int map_idx)
{
	char *ln, *p;
	size_t length;
	uint8_t *bytes = NULL, *bytes_r = NULL, *line = NULL;
	unsigned curchar = 0, gwidth, gwbytes, i, j, chars_per_row;
	int rv = 0;

	while ((ln = FUNC3(fp, &length)) != NULL) {
		ln[length - 1] = '\0';

		if (FUNC12(ln, "# Height: ", 10) == 0) {
			if (bytes != NULL)
				FUNC2(1, "malformed input: Height tag after font data");
			FUNC6(FUNC1(ln + 10));
		} else if (FUNC12(ln, "# Width: ", 9) == 0) {
			if (bytes != NULL)
				FUNC2(1, "malformed input: Width tag after font data");
			FUNC7(FUNC1(ln + 9));
		} else if (FUNC9(ln, "%6x:", &curchar)) {
			if (bytes == NULL) {
				bytes = FUNC13(wbytes * height);
				bytes_r = FUNC13(wbytes * height);
				line = FUNC13(wbytes * 2);
			}
			/* ln is guaranteed to have a colon here. */
			p = FUNC10(ln, ':') + 1;
			chars_per_row = FUNC11(p) / height;
			if (chars_per_row < wbytes * 2)
				FUNC2(1,
				    "malformed input: broken bitmap, character %06x",
				    curchar);
			gwidth = width * 2;
			gwbytes = FUNC5(gwidth, 8);
			if (chars_per_row < gwbytes * 2 || gwidth <= 8) {
				gwidth = width; /* Single-width character. */
				gwbytes = wbytes;
			}

			for (i = 0; i < height; i++) {
				for (j = 0; j < gwbytes; j++) {
					unsigned int val;
					if (FUNC9(p + j * 2, "%2x", &val) == 0)
						break;
					*(line + j) = (uint8_t)val;
				}
				rv = FUNC8(bytes + i * wbytes,
				    bytes_r + i * wbytes, line, gwidth);
				if (rv != 0)
					goto out;
				p += gwbytes * 2;
			}

			rv = FUNC0(curchar, map_idx, bytes,
			    gwidth != width ? bytes_r : NULL);
			if (rv != 0)
				goto out;
		}
	}
out:
	FUNC4(bytes);
	FUNC4(bytes_r);
	FUNC4(line);
	return (rv);
}