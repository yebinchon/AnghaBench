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
struct message {int m_flag; } ;
struct coltab {char co_char; int co_bit; int co_mask; int co_equal; } ;

/* Variables and functions */
 int MDELETED ; 
 int MMARK ; 
 int NMLSIZE ; 
#define  TDASH 136 
#define  TDOLLAR 135 
#define  TDOT 134 
 int TEOL ; 
#define  TERROR 133 
#define  TNUMBER 132 
#define  TPLUS 131 
#define  TSTAR 130 
#define  TSTRING 129 
#define  TUP 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct coltab* coltab ; 
 struct message* dot ; 
 int FUNC1 (char) ; 
 int lastcolmod ; 
 int lexnumber ; 
 char* lexstring ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 struct message* message ; 
 int FUNC5 (char,int) ; 
 int msgCount ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char**) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int
FUNC12(char buf[], int f)
{
	char **np;
	int i;
	struct message *mp;
	char *namelist[NMLSIZE], *bufp;
	int tok, beg, mc, star, other, valdot, colmod, colresult;

	valdot = dot - &message[0] + 1;
	colmod = 0;
	for (i = 1; i <= msgCount; i++)
		FUNC11(i);
	bufp = buf;
	mc = 0;
	np = &namelist[0];
	FUNC10();
	tok = FUNC9(&bufp);
	star = 0;
	other = 0;
	beg = 0;
	while (tok != TEOL) {
		switch (tok) {
		case TNUMBER:
number:
			if (star) {
				FUNC6("No numbers mixed with *\n");
				return (-1);
			}
			mc++;
			other++;
			if (beg != 0) {
				if (FUNC0(lexnumber, f))
					return (-1);
				for (i = beg; i <= lexnumber; i++)
					if (f == MDELETED || (message[i - 1].m_flag & MDELETED) == 0)
						FUNC2(i);
				beg = 0;
				break;
			}
			beg = lexnumber;
			if (FUNC0(beg, f))
				return (-1);
			tok = FUNC9(&bufp);
			FUNC7(tok);
			if (tok != TDASH) {
				FUNC2(beg);
				beg = 0;
			}
			break;

		case TPLUS:
			if (beg != 0) {
				FUNC6("Non-numeric second argument\n");
				return (-1);
			}
			i = valdot;
			do {
				i++;
				if (i > msgCount) {
					FUNC6("Referencing beyond EOF\n");
					return (-1);
				}
			} while ((message[i - 1].m_flag & MDELETED) != f);
			FUNC2(i);
			break;

		case TDASH:
			if (beg == 0) {
				i = valdot;
				do {
					i--;
					if (i <= 0) {
						FUNC6("Referencing before 1\n");
						return (-1);
					}
				} while ((message[i - 1].m_flag & MDELETED) != f);
				FUNC2(i);
			}
			break;

		case TSTRING:
			if (beg != 0) {
				FUNC6("Non-numeric second argument\n");
				return (-1);
			}
			other++;
			if (lexstring[0] == ':') {
				colresult = FUNC1(lexstring[1]);
				if (colresult == 0) {
					FUNC6("Unknown colon modifier \"%s\"\n",
					    lexstring);
					return (-1);
				}
				colmod |= colresult;
			}
			else
				*np++ = FUNC8(lexstring);
			break;

		case TDOLLAR:
		case TUP:
		case TDOT:
			lexnumber = FUNC5(lexstring[0], f);
			if (lexnumber == -1)
				return (-1);
			goto number;

		case TSTAR:
			if (other) {
				FUNC6("Can't mix \"*\" with anything\n");
				return (-1);
			}
			star++;
			break;

		case TERROR:
			return (-1);
		}
		tok = FUNC9(&bufp);
	}
	lastcolmod = colmod;
	*np = NULL;
	mc = 0;
	if (star) {
		for (i = 0; i < msgCount; i++)
			if ((message[i].m_flag & MDELETED) == f) {
				FUNC2(i+1);
				mc++;
			}
		if (mc == 0) {
			FUNC6("No applicable messages.\n");
			return (-1);
		}
		return (0);
	}

	/*
	 * If no numbers were given, mark all of the messages,
	 * so that we can unmark any whose sender was not selected
	 * if any user names were given.
	 */

	if ((np > namelist || colmod != 0) && mc == 0)
		for (i = 1; i <= msgCount; i++)
			if ((message[i-1].m_flag & MDELETED) == f)
				FUNC2(i);

	/*
	 * If any names were given, go through and eliminate any
	 * messages whose senders were not requested.
	 */

	if (np > namelist) {
		for (i = 1; i <= msgCount; i++) {
			for (mc = 0, np = &namelist[0]; *np != NULL; np++)
				if (**np == '/') {
					if (FUNC3(*np, i)) {
						mc++;
						break;
					}
				}
				else {
					if (FUNC4(*np, i)) {
						mc++;
						break;
					}
				}
			if (mc == 0)
				FUNC11(i);
		}

		/*
		 * Make sure we got some decent messages.
		 */

		mc = 0;
		for (i = 1; i <= msgCount; i++)
			if (message[i-1].m_flag & MMARK) {
				mc++;
				break;
			}
		if (mc == 0) {
			FUNC6("No applicable messages from {%s",
				namelist[0]);
			for (np = &namelist[1]; *np != NULL; np++)
				FUNC6(", %s", *np);
			FUNC6("}\n");
			return (-1);
		}
	}

	/*
	 * If any colon modifiers were given, go through and
	 * unmark any messages which do not satisfy the modifiers.
	 */

	if (colmod != 0) {
		for (i = 1; i <= msgCount; i++) {
			struct coltab *colp;

			mp = &message[i - 1];
			for (colp = &coltab[0]; colp->co_char != '\0'; colp++)
				if (colp->co_bit & colmod)
					if ((mp->m_flag & colp->co_mask)
					    != colp->co_equal)
						FUNC11(i);

		}
		for (mp = &message[0]; mp < &message[msgCount]; mp++)
			if (mp->m_flag & MMARK)
				break;
		if (mp >= &message[msgCount]) {
			struct coltab *colp;

			FUNC6("No messages satisfy");
			for (colp = &coltab[0]; colp->co_char != '\0'; colp++)
				if (colp->co_bit & colmod)
					FUNC6(" :%c", colp->co_char);
			FUNC6("\n");
			return (-1);
		}
	}
	return (0);
}