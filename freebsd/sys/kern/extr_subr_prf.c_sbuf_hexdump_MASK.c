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
struct sbuf {int dummy; } ;

/* Variables and functions */
 int HD_COLUMN_MASK ; 
 int HD_DELIM_MASK ; 
 int HD_OMIT_CHARS ; 
 int HD_OMIT_COUNT ; 
 int HD_OMIT_HEX ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,...) ; 

void
FUNC1(struct sbuf *sb, const void *ptr, int length, const char *hdr,
	     int flags)
{
	int i, j, k;
	int cols;
	const unsigned char *cp;
	char delim;

	if ((flags & HD_DELIM_MASK) != 0)
		delim = (flags & HD_DELIM_MASK) >> 8;
	else
		delim = ' ';

	if ((flags & HD_COLUMN_MASK) != 0)
		cols = flags & HD_COLUMN_MASK;
	else
		cols = 16;

	cp = ptr;
	for (i = 0; i < length; i+= cols) {
		if (hdr != NULL)
			FUNC0(sb, "%s", hdr);

		if ((flags & HD_OMIT_COUNT) == 0)
			FUNC0(sb, "%04x  ", i);

		if ((flags & HD_OMIT_HEX) == 0) {
			for (j = 0; j < cols; j++) {
				k = i + j;
				if (k < length)
					FUNC0(sb, "%c%02x", delim, cp[k]);
				else
					FUNC0(sb, "   ");
			}
		}

		if ((flags & HD_OMIT_CHARS) == 0) {
			FUNC0(sb, "  |");
			for (j = 0; j < cols; j++) {
				k = i + j;
				if (k >= length)
					FUNC0(sb, " ");
				else if (cp[k] >= ' ' && cp[k] <= '~')
					FUNC0(sb, "%c", cp[k]);
				else
					FUNC0(sb, ".");
			}
			FUNC0(sb, "|");
		}
		FUNC0(sb, "\n");
	}
}