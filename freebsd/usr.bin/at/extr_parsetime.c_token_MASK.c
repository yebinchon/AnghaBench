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
 int DOT ; 
 int EOF ; 
 int JUNK ; 
 int MINUS ; 
 int NUMBER ; 
 int PLUS ; 
 int SLASH ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int need ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  sc_len ; 
 char* sc_token ; 
 int sc_tokid ; 
 scalar_t__ sc_tokplur ; 
 int scc ; 
 char** scp ; 
 char* sct ; 

__attribute__((used)) static int
FUNC5(void)
{
    int idx;

    while (1) {
	FUNC3(sc_token, 0, sc_len);
	sc_tokid = EOF;
	sc_tokplur = 0;
	idx = 0;

	/* if we need to read another argument, walk along the argument list;
	 * when we fall off the arglist, we'll just return EOF forever
	 */
	if (need) {
	    if (scc < 1)
		return sc_tokid;
	    sct = *scp;
	    scp++;
	    scc--;
	    need = 0;
	}
	/* eat whitespace now - if we walk off the end of the argument,
	 * we'll continue, which puts us up at the top of the while loop
	 * to fetch the next argument in
	 */
	while (FUNC2(*sct))
	    ++sct;
	if (!*sct) {
	    need = 1;
	    continue;
	}

	/* preserve the first character of the new token
	 */
	sc_token[0] = *sct++;

	/* then see what it is
	 */
	if (FUNC1(sc_token[0])) {
	    while (FUNC1(*sct))
		sc_token[++idx] = *sct++;
	    sc_token[++idx] = 0;
	    return sc_tokid = NUMBER;
	}
	else if (FUNC0(sc_token[0])) {
	    while (FUNC0(*sct))
		sc_token[++idx] = *sct++;
	    sc_token[++idx] = 0;
	    return FUNC4(sc_token);
	}
	else if (sc_token[0] == ':' || sc_token[0] == '.')
	    return sc_tokid = DOT;
	else if (sc_token[0] == '+')
	    return sc_tokid = PLUS;
	else if (sc_token[0] == '-')
	    return sc_tokid = MINUS;
	else if (sc_token[0] == '/')
	    return sc_tokid = SLASH;
	else
	    return sc_tokid = JUNK;
    } /* while (1) */
}