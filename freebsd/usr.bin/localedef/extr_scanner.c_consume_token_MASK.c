#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; scalar_t__ id; } ;
struct TYPE_3__ {char wc; int /*<<< orphan*/  token; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int T_CHAR ; 
 int T_ELLIPSIS ; 
 scalar_t__ T_END ; 
 int T_NAME ; 
 int T_NULL ; 
 int T_NUMBER ; 
 scalar_t__* categories ; 
 scalar_t__ category ; 
 scalar_t__ FUNC0 (char) ; 
 TYPE_2__* keywords ; 
 scalar_t__ last_kw ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int) ; 
 char* token ; 
 int tokidx ; 
 scalar_t__ toksz ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__ yylval ; 

__attribute__((used)) static int
FUNC5(void)
{
	int	len = tokidx;
	int	i;

	tokidx = 0;
	if (token == NULL)
		return (T_NULL);

	/*
	 * this one is special, because we don't want it to alter the
	 * last_kw field.
	 */
	if (FUNC1(token, "...") == 0) {
		return (T_ELLIPSIS);
	}

	/* search for reserved words first */
	for (i = 0; keywords[i].name; i++) {
		int j;
		if (FUNC1(keywords[i].name, token) != 0) {
			continue;
		}

		last_kw = keywords[i].id;

		/* clear the top level category if we're done with it */
		if (last_kw == T_END) {
			category = T_END;
		}

		/* set the top level category if we're changing */
		for (j = 0; categories[j]; j++) {
			if (categories[j] != last_kw)
				continue;
			category = last_kw;
		}

		return (keywords[i].id);
	}

	/* maybe its a numeric constant? */
	if (FUNC0(*token) || (*token == '-' && FUNC0(token[1]))) {
		char *eptr;
		yylval.num = FUNC3(token, &eptr, 10);
		if (*eptr != 0)
			FUNC4("malformed number");
		return (T_NUMBER);
	}

	/*
	 * A single lone character is treated as a character literal.
	 * To avoid duplication of effort, we stick in the charmap.
	 */
	if (len == 1) {
		yylval.wc = token[0];
		return (T_CHAR);
	}

	/* anything else is treated as a symbolic name */
	yylval.token = FUNC2(token);
	token = NULL;
	toksz = 0;
	tokidx = 0;
	return (T_NAME);
}