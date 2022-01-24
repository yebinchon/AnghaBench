#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cmd {int c_argtype; char* c_name; int (* c_func ) (char*) ;int c_minargs; int c_maxargs; int /*<<< orphan*/  c_msgflag; int /*<<< orphan*/  c_msgmask; } ;
typedef  int /*<<< orphan*/  arglist ;
struct TYPE_3__ {int m_flag; } ;

/* Variables and functions */
 scalar_t__ CRCV ; 
 scalar_t__ CSEND ; 
 int F ; 
 int I ; 
 int LINESIZE ; 
 int M ; 
 int MAXARGC ; 
 int MDELETED ; 
#define  MSGLIST 132 
#define  NDMLIST 131 
#define  NOLIST 130 
 int P ; 
 int R ; 
#define  RAWLIST 129 
#define  STRLIST 128 
 int T ; 
 int W ; 
 scalar_t__ cond ; 
 TYPE_1__* dot ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char**,int) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 struct cmd* FUNC5 (char*) ; 
 scalar_t__ loading ; 
 TYPE_1__* message ; 
 char* msgvec ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ rcvmode ; 
 scalar_t__ readonly ; 
 int sawcom ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ sourcing ; 
 int /*<<< orphan*/ * FUNC8 (char*,char) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (char**) ; 
 int FUNC13 (char**) ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 

int
FUNC17(char linebuf[], int contxt)
{
	char word[LINESIZE];
	char *arglist[MAXARGC];
	const struct cmd *com;
	char *cp, *cp2;
	int c, muvec[2];
	int e = 1;

	/*
	 * Strip the white space away from the beginning
	 * of the command, then scan out a word, which
	 * consists of anything except digits and white space.
	 *
	 * Handle ! escapes differently to get the correct
	 * lexical conventions.
	 */

	for (cp = linebuf; FUNC4((unsigned char)*cp); cp++)
		;
	if (*cp == '!') {
		if (sourcing) {
			FUNC6("Can't \"!\" while sourcing\n");
			goto out;
		}
		FUNC7(cp+1);
		return (0);
	}
	cp2 = word;
	while (*cp != '\0' && FUNC8(" \t0123456789$^.:/-+*'\"", *cp) == NULL)
		*cp2++ = *cp++;
	*cp2 = '\0';

	/*
	 * Look up the command; if not found, bitch.
	 * Normally, a blank command would map to the
	 * first command in the table; while sourcing,
	 * however, we ignore blank lines to eliminate
	 * confusion.
	 */

	if (sourcing && *word == '\0')
		return (0);
	com = FUNC5(word);
	if (com == NULL) {
		FUNC6("Unknown command: \"%s\"\n", word);
		goto out;
	}

	/*
	 * See if we should execute the command -- if a conditional
	 * we always execute it, otherwise, check the state of cond.
	 */

	if ((com->c_argtype & F) == 0)
		if ((cond == CRCV && !rcvmode) || (cond == CSEND && rcvmode))
			return (0);

	/*
	 * Process the arguments to the command, depending
	 * on the type he expects.  Default to an error.
	 * If we are sourcing an interactive command, it's
	 * an error.
	 */

	if (!rcvmode && (com->c_argtype & M) == 0) {
		FUNC6("May not execute \"%s\" while sending\n",
		    com->c_name);
		goto out;
	}
	if (sourcing && com->c_argtype & I) {
		FUNC6("May not execute \"%s\" while sourcing\n",
		    com->c_name);
		goto out;
	}
	if (readonly && com->c_argtype & W) {
		FUNC6("May not execute \"%s\" -- message file is read only\n",
		   com->c_name);
		goto out;
	}
	if (contxt && com->c_argtype & R) {
		FUNC6("Cannot recursively invoke \"%s\"\n", com->c_name);
		goto out;
	}
	switch (com->c_argtype & ~(F|P|I|M|T|W|R)) {
	case MSGLIST:
		/*
		 * A message list defaulting to nearest forward
		 * legal message.
		 */
		if (msgvec == 0) {
			FUNC6("Illegal use of \"message list\"\n");
			break;
		}
		if ((c = FUNC2(cp, msgvec, com->c_msgflag)) < 0)
			break;
		if (c  == 0) {
			*msgvec = FUNC1(com->c_msgflag, com->c_msgmask);
			msgvec[1] = 0;
		}
		if (*msgvec == 0) {
			FUNC6("No applicable messages\n");
			break;
		}
		e = (*com->c_func)(msgvec);
		break;

	case NDMLIST:
		/*
		 * A message list with no defaults, but no error
		 * if none exist.
		 */
		if (msgvec == 0) {
			FUNC6("Illegal use of \"message list\"\n");
			break;
		}
		if (FUNC2(cp, msgvec, com->c_msgflag) < 0)
			break;
		e = (*com->c_func)(msgvec);
		break;

	case STRLIST:
		/*
		 * Just the straight string, with
		 * leading blanks removed.
		 */
		while (FUNC4((unsigned char)*cp))
			cp++;
		e = (*com->c_func)(cp);
		break;

	case RAWLIST:
		/*
		 * A vector of strings, in shell style.
		 */
		if ((c = FUNC3(cp, arglist,
		    sizeof(arglist) / sizeof(*arglist))) < 0)
			break;
		if (c < com->c_minargs) {
			FUNC6("%s requires at least %d arg(s)\n",
			    com->c_name, com->c_minargs);
			break;
		}
		if (c > com->c_maxargs) {
			FUNC6("%s takes no more than %d arg(s)\n",
			    com->c_name, com->c_maxargs);
			break;
		}
		e = (*com->c_func)(arglist);
		break;

	case NOLIST:
		/*
		 * Just the constant zero, for exiting,
		 * eg.
		 */
		e = (*com->c_func)(0);
		break;

	default:
		FUNC0(1, "Unknown argtype");
	}

out:
	/*
	 * Exit the current source file on
	 * error.
	 */
	if (e) {
		if (e < 0)
			return (1);
		if (loading)
			return (1);
		if (sourcing)
			FUNC15();
		return (0);
	}
	if (com == NULL)
		return (0);
	if (FUNC16("autoprint") != NULL && com->c_argtype & P)
		if ((dot->m_flag & MDELETED) == 0) {
			muvec[0] = dot - &message[0] + 1;
			muvec[1] = 0;
			FUNC14(muvec);
		}
	if (!sourcing && (com->c_argtype & T) == 0)
		sawcom = 1;
	return (0);
}