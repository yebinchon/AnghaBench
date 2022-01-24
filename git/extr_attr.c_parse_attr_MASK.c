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
struct attr_state {int /*<<< orphan*/  attr; int /*<<< orphan*/  setto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR__FALSE ; 
 int /*<<< orphan*/  ATTR__TRUE ; 
 int /*<<< orphan*/  ATTR__UNSET ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  blank ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 

__attribute__((used)) static const char *FUNC7(const char *src, int lineno, const char *cp,
			      struct attr_state *e)
{
	const char *ep, *equals;
	int len;

	ep = cp + FUNC4(cp, blank);
	equals = FUNC3(cp, '=');
	if (equals && ep < equals)
		equals = NULL;
	if (equals)
		len = equals - cp;
	else
		len = ep - cp;
	if (!e) {
		if (*cp == '-' || *cp == '!') {
			cp++;
			len--;
		}
		if (!FUNC0(cp, len)) {
			FUNC2(cp, len, src, lineno);
			return NULL;
		}
	} else {
		/*
		 * As this function is always called twice, once with
		 * e == NULL in the first pass and then e != NULL in
		 * the second pass, no need for attr_name_valid()
		 * check here.
		 */
		if (*cp == '-' || *cp == '!') {
			e->setto = (*cp == '-') ? ATTR__FALSE : ATTR__UNSET;
			cp++;
			len--;
		}
		else if (!equals)
			e->setto = ATTR__TRUE;
		else {
			e->setto = FUNC6(equals + 1, ep - equals - 1);
		}
		e->attr = FUNC1(cp, len);
	}
	return ep + FUNC5(ep, blank);
}