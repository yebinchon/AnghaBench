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
struct ops {int dummy; } ;
typedef  scalar_t__ Linetype ;

/* Variables and functions */
 scalar_t__ LT_ERROR ; 
 scalar_t__ LT_FALSE ; 
 scalar_t__ LT_IF ; 
 scalar_t__ LT_TRUE ; 
 int constexpr ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  eval_ops ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,long*,char const**) ; 
 int FUNC3 (char const**) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ops const*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char const*) ; 
 long FUNC9 (char const*,char**,int /*<<< orphan*/ ) ; 
 long* symname ; 
 char** value ; 

__attribute__((used)) static Linetype
FUNC10(const struct ops *ops, long *valp, const char **cpp)
{
	const char *cp;
	char *ep;
	int sym;
	bool defparen;
	Linetype lt;

	cp = FUNC8(*cpp);
	if (*cp == '!') {
		FUNC0("eval%d !", FUNC6(ops));
		cp++;
		lt = FUNC10(ops, valp, &cp);
		if (lt == LT_ERROR)
			return (LT_ERROR);
		if (lt != LT_IF) {
			*valp = !*valp;
			lt = *valp ? LT_TRUE : LT_FALSE;
		}
	} else if (*cp == '~') {
		FUNC0("eval%d ~", FUNC6(ops));
		cp++;
		lt = FUNC10(ops, valp, &cp);
		if (lt == LT_ERROR)
			return (LT_ERROR);
		if (lt != LT_IF) {
			*valp = ~(*valp);
			lt = *valp ? LT_TRUE : LT_FALSE;
		}
	} else if (*cp == '-') {
		FUNC0("eval%d -", FUNC6(ops));
		cp++;
		lt = FUNC10(ops, valp, &cp);
		if (lt == LT_ERROR)
			return (LT_ERROR);
		if (lt != LT_IF) {
			*valp = -(*valp);
			lt = *valp ? LT_TRUE : LT_FALSE;
		}
	} else if (*cp == '(') {
		cp++;
		FUNC0("eval%d (", FUNC6(ops));
		lt = FUNC2(eval_ops, valp, &cp);
		if (lt == LT_ERROR)
			return (LT_ERROR);
		cp = FUNC8(cp);
		if (*cp++ != ')')
			return (LT_ERROR);
	} else if (FUNC4((unsigned char)*cp)) {
		FUNC0("eval%d number", FUNC6(ops));
		*valp = FUNC9(cp, &ep, 0);
		if (ep == cp)
			return (LT_ERROR);
		lt = *valp ? LT_TRUE : LT_FALSE;
		cp = ep;
	} else if (FUNC5("defined", cp) != NULL) {
		cp = FUNC8(cp+7);
		if (*cp == '(') {
			cp = FUNC8(cp+1);
			defparen = true;
		} else {
			defparen = false;
		}
		sym = FUNC3(&cp);
		cp = FUNC8(cp);
		if (defparen && *cp++ != ')') {
			FUNC0("eval%d defined missing ')'", FUNC6(ops));
			return (LT_ERROR);
		}
		if (sym < 0) {
			FUNC0("eval%d defined unknown", FUNC6(ops));
			lt = LT_IF;
		} else {
			FUNC0("eval%d defined %s", FUNC6(ops), symname[sym]);
			*valp = (value[sym] != NULL);
			lt = *valp ? LT_TRUE : LT_FALSE;
		}
		constexpr = false;
	} else if (!FUNC1(*cp)) {
		FUNC0("eval%d symbol", FUNC6(ops));
		sym = FUNC3(&cp);
		if (sym < 0) {
			lt = LT_IF;
			cp = FUNC7(cp);
		} else if (value[sym] == NULL) {
			*valp = 0;
			lt = LT_FALSE;
		} else {
			*valp = FUNC9(value[sym], &ep, 0);
			if (*ep != '\0' || ep == value[sym])
				return (LT_ERROR);
			lt = *valp ? LT_TRUE : LT_FALSE;
			cp = FUNC7(cp);
		}
		constexpr = false;
	} else {
		FUNC0("eval%d bad expr", FUNC6(ops));
		return (LT_ERROR);
	}

	*cpp = cp;
	FUNC0("eval%d = %d", FUNC6(ops), *valp);
	return (lt);
}