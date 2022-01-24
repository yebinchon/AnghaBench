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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (int,char*,char) ; 
 scalar_t__ FUNC8 (unsigned char) ; 
 scalar_t__ FUNC9 (unsigned char) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 char* FUNC12 (char*) ; 

void
FUNC13(int fd)
{
	char   *cptr, *str;
	int     setid, msgid = 0;
	char    quote = 0;

	/* XXX: init sethead? */

	while ((cptr = FUNC6(fd))) {
		if (*cptr == '$') {
			++cptr;
			if (FUNC10(cptr, "set", 3) == 0) {
				cptr += 3;
				cptr = FUNC12(cptr);
				setid = FUNC4(cptr);
				FUNC1(setid);
				msgid = 0;
			} else if (FUNC10(cptr, "delset", 6) == 0) {
				cptr += 6;
				cptr = FUNC12(cptr);
				setid = FUNC4(cptr);
				FUNC3(setid);
			} else if (FUNC10(cptr, "quote", 5) == 0) {
				cptr += 5;
				if (!*cptr)
					quote = 0;
				else {
					cptr = FUNC12(cptr);
					if (!*cptr)
						quote = 0;
					else
						quote = *cptr;
				}
			} else if (FUNC9((unsigned char) *cptr)) {
				;
			} else {
				if (*cptr) {
					cptr = FUNC12(cptr);
					if (*cptr)
						FUNC11(cptr, "unrecognized line");
				}
			}
		} else {
			/*
			 * First check for (and eat) empty lines....
			 */
			if (!*cptr)
				continue;
			/*
			 * We have a digit? Start of a message. Else,
			 * syntax error.
			 */
			if (FUNC8((unsigned char) *cptr)) {
				msgid = FUNC4(cptr);
				cptr = FUNC5(cptr);
				cptr = FUNC12(cptr);
				/* if (*cptr) ++cptr; */
			} else {
				FUNC11(cptr, "neither blank line nor start of a message id");
				continue;
			}
			/*
			 * If we have a message ID, but no message,
			 * then this means "delete this message id
			 * from the catalog".
			 */
			if (!*cptr) {
				FUNC2(msgid);
			} else {
				str = FUNC7(fd, cptr, quote);
				FUNC0(msgid, str);
			}
		}
	}
}