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
 int /*<<< orphan*/  FUNC0 (char,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 long FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__* FUNC7 (char*) ; 
 char* FUNC8 (long) ; 
 char* FUNC9 (char*,long) ; 

__attribute__((used)) static char *
FUNC10(int fd, char *cptr, char quote)
{
	static char *msg = NULL;
	static long msglen = 0;
	long    clen, i;
	char   *tptr;

	if (quote && *cptr == quote) {
		++cptr;
	} 

	clen = FUNC5(cptr) + 1;
	if (clen > msglen) {
		if (msglen)
			msg = FUNC9(msg, clen);
		else
			msg = FUNC8(clen);
		msglen = clen;
	}
	tptr = msg;

	while (*cptr) {
		if (quote && *cptr == quote) {
			char   *tmp;
			tmp = cptr + 1;
			if (*tmp && (!FUNC4((unsigned char) *tmp) || *FUNC7(tmp))) {
				FUNC6(cptr, "unexpected quote character, ignoring");
				*tptr++ = *cptr++;
			} else {
				*cptr = '\0';
			}
		} else
			if (*cptr == '\\') {
				++cptr;
				switch (*cptr) {
				case '\0':
					cptr = FUNC2(fd);
					if (!cptr)
						FUNC1("premature end of file");
					msglen += FUNC5(cptr);
					i = tptr - msg;
					msg = FUNC9(msg, msglen);
					tptr = msg + i;
					break;

		#define	CASEOF(CS, CH)		\
			case CS:		\
				*tptr++ = CH;	\
				++cptr;		\
				break;		\

				CASEOF('n', '\n');
				CASEOF('t', '\t');
				CASEOF('v', '\v');
				CASEOF('b', '\b');
				CASEOF('r', '\r');
				CASEOF('f', '\f');
				CASEOF('"', '"');
				CASEOF('\\', '\\');

				default:
					if (quote && *cptr == quote) {
						*tptr++ = *cptr++;
					} else if (FUNC3((unsigned char) *cptr)) {
						*tptr = 0;
						for (i = 0; i < 3; ++i) {
							if (!FUNC3((unsigned char) *cptr))
								break;
							if (*cptr > '7')
								FUNC6(cptr, "octal number greater than 7?!");
							*tptr *= 8;
							*tptr += (*cptr - '0');
							++cptr;
						}
					} else {
						FUNC6(cptr, "unrecognized escape sequence");
					}
					break;
				}
			} else {
				*tptr++ = *cptr++;
			}
	}
	*tptr = '\0';
	return (msg);
}