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
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int STDOUT_FILENO ; 
 int a_opt ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct archive*,char*,int) ; 
 char* buffer ; 
 scalar_t__ FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * spinner ; 
 scalar_t__ tty ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (int,...) ; 

__attribute__((used)) static int
FUNC8(struct archive *a, char *pathname, int fd)
{
	int cr, text, warn;
	ssize_t len;
	unsigned char *p, *q, *end;

	text = a_opt;
	warn = 0;
	cr = 0;

	/* loop over file contents and write to fd */
	for (int n = 0; ; n++) {
		if (fd != STDOUT_FILENO)
			if (tty && (n % 4) == 0)
				FUNC5(" %c\b\b", spinner[(n / 4) % sizeof spinner]);

		len = FUNC2(a, buffer, sizeof buffer);

		if (len < 0)
			FUNC1(len);

		/* left over CR from previous buffer */
		if (a_opt && cr) {
			if (len == 0 || buffer[0] != '\n')
				if (FUNC7(fd, "\r", 1) != 1)
					FUNC4("write('%s')", pathname);
			cr = 0;
		}

		/* EOF */
		if (len == 0)
			break;
		end = buffer + len;

		/*
		 * Detect whether this is a text file.  The correct way to
		 * do this is to check the least significant bit of the
		 * "internal file attributes" field of the corresponding
		 * file header in the central directory, but libarchive
		 * does not provide access to this field, so we have to
		 * guess by looking for non-ASCII characters in the
		 * buffer.  Hopefully we won't guess wrong.  If we do
		 * guess wrong, we print a warning message later.
		 */
		if (a_opt && n == 0) {
			if (FUNC3(buffer, len))
				text = 0;
		}

		/* simple case */
		if (!a_opt || !text) {
			if (FUNC7(fd, buffer, len) != len)
				FUNC4("write('%s')", pathname);
			continue;
		}

		/* hard case: convert \r\n to \n (sigh...) */
		for (p = buffer; p < end; p = q + 1) {
			for (q = p; q < end; q++) {
				if (!warn && FUNC0(*q)) {
					FUNC6("%s may be corrupted due"
					    " to weak text file detection"
					    " heuristic", pathname);
					warn = 1;
				}
				if (q[0] != '\r')
					continue;
				if (&q[1] == end) {
					cr = 1;
					break;
				}
				if (q[1] == '\n')
					break;
			}
			if (FUNC7(fd, p, q - p) != q - p)
				FUNC4("write('%s')", pathname);
		}
	}

	return text;
}