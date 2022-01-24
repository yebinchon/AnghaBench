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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int,char*,char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int height ; 
 unsigned int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (char*,char*,char*,int) ; 
 scalar_t__ FUNC12 (char*,char*,...) ; 
 char* FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 unsigned int FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char*,char*,int) ; 
 int wbytes ; 
 scalar_t__ width ; 
 char* FUNC17 (int) ; 

__attribute__((used)) static int
FUNC18(FILE *fp, unsigned int map_idx)
{
	char *line, *ln, *p;
	size_t length;
	uint8_t *bytes, *bytes_r;
	unsigned int curchar = 0, i, j, linenum = 0, bbwbytes;
	int bbw, bbh, bbox, bboy;		/* Glyph bounding box. */
	int fbbw = 0, fbbh, fbbox, fbboy;	/* Font bounding box. */
	int dwidth = 0, dwy = 0;
	int rv = -1;
	char spc = '\0';

	/*
	 * Step 1: Parse FONT logical font descriptor and FONTBOUNDINGBOX
	 * bounding box.
	 */
	while ((ln = FUNC3(fp, &length)) != NULL) {
		linenum++;
		ln[length - 1] = '\0';

		if (FUNC16(ln, "FONT ", 5) == 0) {
			p = ln + 5;
			i = 0;
			while ((p = FUNC13(p, '-')) != NULL) {
				p++;
				i++;
				if (i == 11) {
					spc = *p;
					break;
				}
			}
		} else if (FUNC16(ln, "FONTBOUNDINGBOX ", 16) == 0) {
			if (FUNC12(ln + 16, "%d %d %d %d", &fbbw, &fbbh, &fbbox,
			    &fbboy) != 4)
				FUNC2(1, "invalid FONTBOUNDINGBOX at line %u",
				    linenum);
			FUNC10(fbbw);
			FUNC9(fbbh);
			break;
		}
	}
	if (fbbw == 0)
		FUNC2(1, "broken font header");
	if (spc != 'c' && spc != 'C')
		FUNC2(1, "font spacing \"C\" (character cell) required");

	/* Step 2: Validate DWIDTH (Device Width) of all glyphs. */
	while ((ln = FUNC3(fp, &length)) != NULL) {
		linenum++;
		ln[length - 1] = '\0';

		if (FUNC16(ln, "DWIDTH ", 7) == 0) {
			if (FUNC12(ln + 7, "%d %d", &dwidth, &dwy) != 2)
				FUNC2(1, "invalid DWIDTH at line %u", linenum);
			if (dwy != 0 || (dwidth != fbbw && dwidth * 2 != fbbw))
				FUNC2(1, "bitmap with unsupported DWIDTH %d %d at line %u",
				    dwidth, dwy, linenum);
			if (dwidth < fbbw)
				FUNC10(dwidth);
		}
	}

	/* Step 3: Restart at the beginning of the file and read glyph data. */
	dwidth = bbw = bbh = 0;
	FUNC7(fp);
	linenum = 0;
	bbwbytes = 0; /* GCC 4.2.1 "may be used uninitialized" workaround. */
	bytes = FUNC17(wbytes * height);
	bytes_r = FUNC17(wbytes * height);
	line = FUNC17(wbytes * 2);
	while ((ln = FUNC3(fp, &length)) != NULL) {
		linenum++;
		ln[length - 1] = '\0';

		if (FUNC16(ln, "ENCODING ", 9) == 0) {
			curchar = FUNC1(ln + 9);
		} else if (FUNC16(ln, "DWIDTH ", 7) == 0) {
			dwidth = FUNC1(ln + 7);
		} else if (FUNC16(ln, "BBX ", 4) == 0) {
			if (FUNC12(ln + 4, "%d %d %d %d", &bbw, &bbh, &bbox,
			     &bboy) != 4)
				FUNC2(1, "invalid BBX at line %u", linenum);
			if (bbw < 1 || bbh < 1 || bbw > fbbw || bbh > fbbh ||
			    bbox < fbbox || bboy < fbboy ||
			    bbh + bboy > fbbh + fbboy)
				FUNC2(1, "broken bitmap with BBX %d %d %d %d at line %u",
				    bbw, bbh, bbox, bboy, linenum);
			bbwbytes = FUNC5(bbw, 8);
		} else if (FUNC16(ln, "BITMAP", 6) == 0 &&
		    (ln[6] == ' ' || ln[6] == '\0')) {
			if (dwidth == 0 || bbw == 0 || bbh == 0)
				FUNC2(1, "broken char header at line %u!",
				    linenum);
			FUNC6(bytes, 0, wbytes * height);
			FUNC6(bytes_r, 0, wbytes * height);

			/*
			 * Assume that the next _bbh_ lines are bitmap data.
			 * ENDCHAR is allowed to terminate the bitmap
			 * early but is not otherwise checked; any extra data
			 * is ignored.
			 */
			for (i = (fbbh + fbboy) - (bbh + bboy);
			    i < (unsigned int)((fbbh + fbboy) - bboy); i++) {
				if ((ln = FUNC3(fp, &length)) == NULL)
					FUNC2(1, "unexpected EOF");
				linenum++;
				ln[length - 1] = '\0';
				if (FUNC14(ln, "ENDCHAR") == 0)
					break;
				if (FUNC15(ln) < bbwbytes * 2)
					FUNC2(1, "broken bitmap at line %u",
					    linenum);
				FUNC6(line, 0, wbytes * 2);
				for (j = 0; j < bbwbytes; j++) {
					unsigned int val;
					if (FUNC12(ln + j * 2, "%2x", &val) ==
					    0)
						break;
					*(line + j) = (uint8_t)val;
				}

				FUNC8(line, wbytes * 2, bbox - fbbox);
				rv = FUNC11(bytes + i * wbytes,
				     bytes_r + i * wbytes, line, dwidth);
				if (rv != 0)
					goto out;
			}

			rv = FUNC0(curchar, map_idx, bytes,
			    dwidth > (int)width ? bytes_r : NULL);
			if (rv != 0)
				goto out;

			dwidth = bbw = bbh = 0;
		}
	}

out:
	FUNC4(bytes);
	FUNC4(bytes_r);
	FUNC4(line);
	return (rv);
}