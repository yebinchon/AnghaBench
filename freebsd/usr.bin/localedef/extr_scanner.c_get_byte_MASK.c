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
 int EOF ; 
 int esc_char ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(void)
{
	int	c;

	if ((c = FUNC3()) != esc_char) {
		FUNC4(c);
		return (EOF);
	}
	c = FUNC3();

	switch (c) {
	case 'd':
	case 'D':
		return (FUNC0());
	case 'x':
	case 'X':
		return (FUNC1());
	case '0':
	case '1':
	case '2':
	case '3':
	case '4':
	case '5':
	case '6':
	case '7':
		/* put the character back so we can get it */
		FUNC4(c);
		return (FUNC2());
	default:
		FUNC4(c);
		FUNC4(esc_char);
		return (EOF);
	}
}