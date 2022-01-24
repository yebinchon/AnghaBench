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
 char const comment_line_char ; 
 char* FUNC0 (char const*,char,size_t) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char const*,size_t) ; 

size_t FUNC3(const char *buf, size_t len)
{
	size_t boc = 0;
	size_t bol = 0;
	int in_old_conflicts_block = 0;
	size_t cutoff = FUNC2(buf, len);

	while (bol < cutoff) {
		const char *next_line = FUNC0(buf + bol, '\n', len - bol);

		if (!next_line)
			next_line = buf + len;
		else
			next_line++;

		if (buf[bol] == comment_line_char || buf[bol] == '\n') {
			/* is this the first of the run of comments? */
			if (!boc)
				boc = bol;
			/* otherwise, it is just continuing */
		} else if (FUNC1(buf + bol, "Conflicts:\n")) {
			in_old_conflicts_block = 1;
			if (!boc)
				boc = bol;
		} else if (in_old_conflicts_block && buf[bol] == '\t') {
			; /* a pathname in the conflicts block */
		} else if (boc) {
			/* the previous was not trailing comment */
			boc = 0;
			in_old_conflicts_block = 0;
		}
		bol = next_line - buf;
	}
	return boc ? len - boc : len - cutoff;
}