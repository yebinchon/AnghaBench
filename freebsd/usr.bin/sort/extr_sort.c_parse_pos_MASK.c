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
struct key_specs {size_t f2; size_t f1; size_t c2; size_t c1; int pos2b; int pos1b; int /*<<< orphan*/  sm; } ;
typedef  size_t regoff_t ;
struct TYPE_3__ {scalar_t__ rm_eo; scalar_t__ rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  REG_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (char const,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,size_t,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(const char *s, struct key_specs *ks, bool *mef_flags, bool second)
{
	regmatch_t pmatch[4];
	regex_t re;
	char *c, *f;
	const char *sregexp = "^([0-9]+)(\\.[0-9]+)?([bdfirMngRhV]+)?$";
	size_t len, nmatch;
	int ret;

	ret = -1;
	nmatch = 4;
	c = f = NULL;

	if (FUNC3(&re, sregexp, REG_EXTENDED) != 0)
		return (-1);

	if (FUNC4(&re, s, nmatch, pmatch, 0) != 0)
		goto end;

	if (pmatch[0].rm_eo <= pmatch[0].rm_so)
		goto end;

	if (pmatch[1].rm_eo <= pmatch[1].rm_so)
		goto end;

	len = pmatch[1].rm_eo - pmatch[1].rm_so;
	f = FUNC8((len + 1) * sizeof(char));

	FUNC9(f, s + pmatch[1].rm_so, len);
	f[len] = '\0';

	if (second) {
		errno = 0;
		ks->f2 = (size_t) FUNC10(f, NULL, 10);
		if (errno != 0)
			FUNC1(2, "-k");
		if (ks->f2 == 0) {
			FUNC11("%s",FUNC2(5));
			goto end;
		}
	} else {
		errno = 0;
		ks->f1 = (size_t) FUNC10(f, NULL, 10);
		if (errno != 0)
			FUNC1(2, "-k");
		if (ks->f1 == 0) {
			FUNC11("%s",FUNC2(5));
			goto end;
		}
	}

	if (pmatch[2].rm_eo > pmatch[2].rm_so) {
		len = pmatch[2].rm_eo - pmatch[2].rm_so - 1;
		c = FUNC8((len + 1) * sizeof(char));

		FUNC9(c, s + pmatch[2].rm_so + 1, len);
		c[len] = '\0';

		if (second) {
			errno = 0;
			ks->c2 = (size_t) FUNC10(c, NULL, 10);
			if (errno != 0)
				FUNC1(2, "-k");
		} else {
			errno = 0;
			ks->c1 = (size_t) FUNC10(c, NULL, 10);
			if (errno != 0)
				FUNC1(2, "-k");
			if (ks->c1 == 0) {
				FUNC11("%s",FUNC2(6));
				goto end;
			}
		}
	} else {
		if (second)
			ks->c2 = 0;
		else
			ks->c1 = 1;
	}

	if (pmatch[3].rm_eo > pmatch[3].rm_so) {
		regoff_t i = 0;

		for (i = pmatch[3].rm_so; i < pmatch[3].rm_eo; i++) {
			FUNC0(s[i], mef_flags);
			if (s[i] == 'b') {
				if (second)
					ks->pos2b = true;
				else
					ks->pos1b = true;
			} else if (!FUNC6(&(ks->sm), s[i]))
				goto end;
		}
	}

	ret = 0;

end:

	if (c)
		FUNC7(c);
	if (f)
		FUNC7(f);
	FUNC5(&re);

	return (ret);
}