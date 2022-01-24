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
typedef  scalar_t__ u8 ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,...) ; 

__attribute__((used)) static void
FUNC1(struct sbuf *sb, u8 *buf, int length, int label_offset, bool text)
{
	int i, j, k, width;
	char c;

	if (length < 1 || buf == NULL) return;

	int byte_stride = 16;
	int lines = length / byte_stride;
	int rem = length % byte_stride;
	if (rem > 0)
		lines++;

	for (i = 0; i < lines; i++) {
		width = (rem > 0 && i == lines - 1)
		    ? rem : byte_stride;

		FUNC0(sb, "%4d | ", label_offset + i * byte_stride);

		for (j = 0; j < width; j++)
			FUNC0(sb, "%02x ", buf[i * byte_stride + j]);

		if (width < byte_stride) {
			for (k = 0; k < (byte_stride - width); k++)
				FUNC0(sb, "   ");
		}

		if (!text) {
			FUNC0(sb, "\n");
			continue;
		}

		for (j = 0; j < width; j++) {
			c = (char)buf[i * byte_stride + j];
			if (c < 32 || c > 126)
				FUNC0(sb, ".");
			else
				FUNC0(sb, "%c", c);

			if (j == width - 1)
				FUNC0(sb, "\n");
		}
	}
}