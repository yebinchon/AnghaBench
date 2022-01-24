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
struct tty {int t_column; int t_writepos; int /*<<< orphan*/  t_inq; int /*<<< orphan*/  t_outq; } ;

/* Variables and functions */
#define  CCR 132 
#define  CEOF 131 
#define  CERASE2 130 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  CNL 129 
#define  CTAB 128 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int OCRNL ; 
 int ONLCR ; 
 int ONLRET ; 
 int ONOCR ; 
 int ONOEOT ; 
 int OPOST ; 
 int FUNC3 () ; 
 int TAB3 ; 
 int /*<<< orphan*/  o ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct tty *tp, char c)
{
	unsigned int scnt, error;

	FUNC2(FUNC0(o, OPOST));
	FUNC2(FUNC1(c));

#define PRINT_NORMAL() ttyoutq_write_nofrag(&tp->t_outq, &c, 1)
	switch (c) {
	case CEOF:
		/* End-of-text dropping. */
		if (FUNC0(o, ONOEOT))
			return (0);
		return PRINT_NORMAL();

	case CERASE2:
		/* Handle backspace to fix tab expansion. */
		if (PRINT_NORMAL() != 0)
			return (-1);
		if (tp->t_column > 0)
			tp->t_column--;
		return (0);

	case CTAB:
		/* Tab expansion. */
		scnt = 8 - (tp->t_column & 7);
		if (FUNC0(o, TAB3)) {
			error = FUNC5(&tp->t_outq,
			    "        ", scnt);
		} else {
			error = PRINT_NORMAL();
		}
		if (error)
			return (-1);

		tp->t_column += scnt;
		FUNC2((tp->t_column % 8) == 0);
		return (0);

	case CNL:
		/* Newline conversion. */
		if (FUNC0(o, ONLCR)) {
			/* Convert \n to \r\n. */
			error = FUNC5(&tp->t_outq, "\r\n", 2);
		} else {
			error = PRINT_NORMAL();
		}
		if (error)
			return (-1);

		if (FUNC0(o, ONLCR|ONLRET)) {
			tp->t_column = tp->t_writepos = 0;
			FUNC4(&tp->t_inq);
		}
		return (0);

	case CCR:
		/* Carriage return to newline conversion. */
		if (FUNC0(o, OCRNL))
			c = CNL;
		/* Omit carriage returns on column 0. */
		if (FUNC0(o, ONOCR) && tp->t_column == 0)
			return (0);
		if (PRINT_NORMAL() != 0)
			return (-1);

		tp->t_column = tp->t_writepos = 0;
		FUNC4(&tp->t_inq);
		return (0);
	}

	/*
	 * Invisible control character. Print it, but don't
	 * increase the column count.
	 */
	return PRINT_NORMAL();
#undef PRINT_NORMAL
}