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
typedef  int /*<<< orphan*/  term_color_t ;
typedef  int /*<<< orphan*/  term_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TF_BLINK ; 
 int TF_BOLD ; 
 int TF_REVERSE ; 

void
FUNC4(term_char_t c, int cursor,
    term_color_t *fg, term_color_t *bg)
{
	term_color_t tmp;
	int invert;

	invert = 0;

	*fg = FUNC1(c);
	if (FUNC2(c) & TF_BOLD)
		*fg = FUNC3(*fg);
	*bg = FUNC0(c);
	if (FUNC2(c) & TF_BLINK)
		*bg = FUNC3(*bg);

	if (FUNC2(c) & TF_REVERSE)
		invert ^= 1;
	if (cursor)
		invert ^= 1;

	if (invert) {
		tmp = *fg;
		*fg = *bg;
		*bg = tmp;
	}
}