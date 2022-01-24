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
typedef  int /*<<< orphan*/ * ndptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EOF ; 
 char EOS ; 
 int MAXTOK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* ep ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macros ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ sp ; 

__attribute__((used)) static ndptr
FUNC9(int c, char *tp)
{
	char *name = tp;
	char *etp = tp+MAXTOK;
	ndptr p;

	*tp++ = c;

	while ((FUNC3(c = FUNC2()) || c == '_') && tp < etp)
		*tp++ = c;
	if (c != EOF)
		FUNC1(c);
	*tp = EOS;
	/* token is too long, it won't match anything, but it can still
	 * be output. */
	if (tp == ep) {
		FUNC7(name);
		while (FUNC3(c = FUNC2()) || c == '_') {
			if (sp < 0)
				FUNC8(c);
			else
				FUNC0(c);
		}
		*name = EOS;
		return NULL;
	}

	p = FUNC5(&macros, FUNC6(&macros, name, (const char **)&tp));
	if (p == NULL)
		return NULL;
	if (FUNC4(p) == NULL)
		return NULL;
	return p;
}