#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int wc; } ;

/* Variables and functions */
 int EOF ; 
 int T_CHAR ; 
 int T_COMMA ; 
 int T_GT ; 
 int T_LPAREN ; 
 int T_NL ; 
 int T_NULL ; 
 int T_QUOTE ; 
 int T_RPAREN ; 
 int T_SEMI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int com_char ; 
 int FUNC2 () ; 
 int esc_char ; 
 int escaped ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int hadtok ; 
 int instring ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (char*,int) ; 
 scalar_t__ tokidx ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__ yylval ; 

int
FUNC9(void)
{
	int		c;

	while ((c = FUNC6()) != EOF) {

		/* special handling for quoted string */
		if (instring) {
			if (escaped) {
				escaped = 0;

				/* if newline, just eat and forget it */
				if (c == '\n')
					continue;

				if (FUNC7("xXd01234567", c)) {
					FUNC8(c);
					FUNC8(esc_char);
					return (FUNC5());
				}
				yylval.wc = FUNC3(c);
				return (T_CHAR);
			}
			if (c == esc_char) {
				escaped = 1;
				continue;
			}
			switch (c) {
			case '<':
				return (FUNC4());
			case '>':
				/* oops! should generate syntax error  */
				return (T_GT);
			case '"':
				instring = 0;
				return (T_QUOTE);
			default:
				yylval.wc = c;
				return (T_CHAR);
			}
		}

		/* escaped characters first */
		if (escaped) {
			escaped = 0;
			if (c == '\n') {
				/* eat the newline */
				continue;
			}
			hadtok = 1;
			if (tokidx) {
				/* an escape mid-token is nonsense */
				return (T_NULL);
			}

			/* numeric escapes are treated as wide characters */
			if (FUNC7("xXd01234567", c)) {
				FUNC8(c);
				FUNC8(esc_char);
				return (FUNC5());
			}

			FUNC0(FUNC3(c));
			continue;
		}

		/* if it is the escape charter itself note it */
		if (c == esc_char) {
			escaped = 1;
			continue;
		}

		/* remove from the comment char to end of line */
		if (c == com_char) {
			while (c != '\n') {
				if ((c = FUNC6()) == EOF) {
					/* end of file without newline! */
					return (EOF);
				}
			}
			FUNC1(c == '\n');
			if (!hadtok) {
				/*
				 * If there were no tokens on this line,
				 * then just pretend it didn't exist at all.
				 */
				continue;
			}
			hadtok = 0;
			return (T_NL);
		}

		if (FUNC7(" \t\n;()<>,\"", c) && (tokidx != 0)) {
			/*
			 * These are all token delimiters.  If there
			 * is a token already in progress, we need to
			 * process it.
			 */
			FUNC8(c);
			return (FUNC2());
		}

		switch (c) {
		case '\n':
			if (!hadtok) {
				/*
				 * If the line was completely devoid of tokens,
				 * then just ignore it.
				 */
				continue;
			}
			/* we're starting a new line, reset the token state */
			hadtok = 0;
			return (T_NL);
		case ',':
			hadtok = 1;
			return (T_COMMA);
		case ';':
			hadtok = 1;
			return (T_SEMI);
		case '(':
			hadtok = 1;
			return (T_LPAREN);
		case ')':
			hadtok = 1;
			return (T_RPAREN);
		case '>':
			hadtok = 1;
			return (T_GT);
		case '<':
			/* symbol start! */
			hadtok = 1;
			return (FUNC4());
		case ' ':
		case '\t':
			/* whitespace, just ignore it */
			continue;
		case '"':
			hadtok = 1;
			instring = 1;
			return (T_QUOTE);
		default:
			hadtok = 1;
			FUNC0(c);
			continue;
		}
	}
	return (EOF);
}