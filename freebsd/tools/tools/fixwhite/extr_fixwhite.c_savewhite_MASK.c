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
typedef  int off_t ;

/* Variables and functions */
 int column ; 
 int /*<<< orphan*/  FUNC0 (int,char) ; 
 int /*<<< orphan*/  queuelen ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void
FUNC2(char c, bool leading)
{
	off_t ncolumn;

	switch (c) {
	case '\n':
		if (leading) {
			/* Remove empty lines before input. */
			queuelen = 0;
			column = 0;
		} else {
			/* Remove trailing whitespace. */
			while (FUNC0(1, ' ') || FUNC0(1, '\t'))
				queuelen--;
			/* Remove redundant empty lines. */
			if (FUNC0(2, '\n') && FUNC0(1, '\n'))
				return;
			FUNC1('\n');
		}
		break;
	case ' ':
		FUNC1(' ');
		break;
	case '\t':
		/* Convert preceding spaces to tabs. */
		ncolumn = (column / 8 + 1) * 8;
		while (FUNC0(1, ' ')) {
			queuelen--;
			column--;
		}
		while (column < ncolumn)
			FUNC1('\t');
		break;
	}
}