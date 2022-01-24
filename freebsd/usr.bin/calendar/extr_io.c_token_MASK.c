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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int T_ERR ; 
 int T_OK ; 
 int T_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * definitions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10(char *line, FILE *out, bool *skip)
{
	char *walk, c, a;

	if (FUNC7(line, "endif", 5) == 0) {
		*skip = false;
		return (T_OK);
	}

	if (*skip)
		return (T_OK);

	if (FUNC7(line, "include", 7) == 0) {
		walk = line + 7;

		FUNC8(&walk);

		if (*walk == '\0') {
			FUNC9("Expecting arguments after #include");
			return (T_ERR);
		}

		if (*walk != '<' && *walk != '\"') {
			FUNC9("Excecting '<' or '\"' after #include");
			return (T_ERR);
		}

		a = *walk;
		walk++;
		c = walk[FUNC6(walk) - 1];

		switch(c) {
		case '>':
			if (a != '<') {
				FUNC9("Unterminated include expecting '\"'");
				return (T_ERR);
			}
			break;
		case '\"':
			if (a != '\"') {
				FUNC9("Unterminated include expecting '>'");
				return (T_ERR);
			}
			break;
		default:
			FUNC9("Unterminated include expecting '%c'",
			    a == '<' ? '>' : '\"' );
			return (T_ERR);
		}
		walk[FUNC6(walk) - 1] = '\0';

		if (FUNC1(FUNC0(walk), out))
			return (T_ERR);

		return (T_OK);
	}

	if (FUNC7(line, "define", 6) == 0) {
		if (definitions == NULL)
			definitions = FUNC4();
		walk = line + 6;
		FUNC8(&walk);

		if (*walk == '\0') {
			FUNC9("Expecting arguments after #define");
			return (T_ERR);
		}

		FUNC2(definitions, FUNC5(walk));
		return (T_OK);
	}

	if (FUNC7(line, "ifndef", 6) == 0) {
		walk = line + 6;
		FUNC8(&walk);

		if (*walk == '\0') {
			FUNC9("Expecting arguments after #ifndef");
			return (T_ERR);
		}

		if (definitions != NULL && FUNC3(definitions, walk) != NULL)
			*skip = true;

		return (T_OK);
	}

	return (T_PROCESS);

}