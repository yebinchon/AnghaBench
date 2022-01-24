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
struct TYPE_3__ {scalar_t__ rm_eo; scalar_t__ rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  REG_EXTENDED ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,size_t,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(const char *s, int *nf, int *nc, char* sopts)
{
	regex_t re;
	regmatch_t pmatch[4];
	char *c, *f;
	const char *sregexp = "^([0-9]+)(\\.[0-9]+)?([A-Za-z]+)?$";
	int ret;
	size_t len, nmatch;

	ret = -1;
	nmatch = 4;
	c = f = NULL;
	*nc = *nf = 0;

	if (FUNC2(&re, sregexp, REG_EXTENDED) != 0)
		return (-1);

	if (FUNC3(&re, s, nmatch, pmatch, 0) != 0)
		goto end;

	if (pmatch[0].rm_eo <= pmatch[0].rm_so)
		goto end;

	if (pmatch[1].rm_eo <= pmatch[1].rm_so)
		goto end;

	len = pmatch[1].rm_eo - pmatch[1].rm_so;
	f = FUNC6((len + 1) * sizeof(char));

	FUNC7(f, s + pmatch[1].rm_so, len);
	f[len] = '\0';

	errno = 0;
	*nf = (size_t) FUNC8(f, NULL, 10);
	if (errno != 0)
		FUNC0(2, "%s", FUNC1(11));

	if (pmatch[2].rm_eo > pmatch[2].rm_so) {
		len = pmatch[2].rm_eo - pmatch[2].rm_so - 1;
		c = FUNC6((len + 1) * sizeof(char));

		FUNC7(c, s + pmatch[2].rm_so + 1, len);
		c[len] = '\0';

		errno = 0;
		*nc = (size_t) FUNC8(c, NULL, 10);
		if (errno != 0)
			FUNC0(2, "%s", FUNC1(11));
	}

	if (pmatch[3].rm_eo > pmatch[3].rm_so) {

		len = pmatch[3].rm_eo - pmatch[3].rm_so;

		FUNC7(sopts, s + pmatch[3].rm_so, len);
		sopts[len] = '\0';
	}

	ret = 0;

end:
	if (c)
		FUNC5(c);
	if (f)
		FUNC5(f);
	FUNC4(&re);

	return (ret);
}