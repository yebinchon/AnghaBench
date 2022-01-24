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
typedef  int /*<<< orphan*/  wint_t ;

/* Variables and functions */
 int MB_LEN_MAX ; 
 scalar_t__ bflag ; 
 size_t FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(int col, wint_t ch)
{
	char buf[MB_LEN_MAX];
	size_t len;
	int w;

	if (bflag) {
		len = FUNC0(buf, ch, NULL);
		col += len;
	} else
		switch (ch) {
		case '\b':
			if (col > 0)
				--col;
			break;
		case '\r':
			col = 0;
			break;
		case '\t':
			col = (col + 8) & ~7;
			break;
		default:
			if ((w = FUNC1(ch)) > 0)
				col += w;
			break;
		}

	return (col);
}