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
typedef  char wint_t ;
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char WEOF ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  format_troff ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char) ; 
 size_t tab_width ; 
 int FUNC3 (char) ; 
 char* FUNC4 (char*,size_t) ; 

__attribute__((used)) static wchar_t *
FUNC5(FILE *stream, size_t *lengthp)
{
	static wchar_t *buf = NULL;
	static size_t length = 0;
	size_t len = 0;
	wint_t ch;
	size_t spaces_pending = 0;
	int troff = 0;
	size_t col = 0;
	int cwidth;

	if (buf == NULL) {
		length = 100;
		buf = FUNC0(length * sizeof(wchar_t));
	}
	while ((ch = FUNC1(stream)) != '\n' && ch != WEOF) {
		if (len + spaces_pending == 0 && ch == '.' && !format_troff)
			troff = 1;
		if (ch == ' ')
			++spaces_pending;
		else if (troff || FUNC2(ch)) {
			while (len + spaces_pending >= length) {
				length *= 2;
				buf = FUNC4(buf, length * sizeof(wchar_t));
			}
			while (spaces_pending > 0) {
				--spaces_pending;
				buf[len++] = ' ';
				col++;
			}
			buf[len++] = ch;
			col += (cwidth = FUNC3(ch)) > 0 ? cwidth : 1;
		} else if (ch == '\t')
			spaces_pending += tab_width -
			    (col + spaces_pending) % tab_width;
		else if (ch == '\b') {
			if (len)
				--len;
			if (col)
				--col;
		}
	}
	*lengthp = len;
	return (len > 0 || ch != WEOF) ? buf : 0;
}