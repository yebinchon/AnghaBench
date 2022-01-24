#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  regmatch_t ;
struct TYPE_6__ {scalar_t__ re_nsub; } ;
typedef  TYPE_1__ regex_t ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char const*,TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ mimic_gnu ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 size_t FUNC10 (char const*) ; 
 char const* FUNC11 (char const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 

void
FUNC13(const char *argv[], int argc)
{
	if (argc <= 3) {
		FUNC6("Too few arguments to patsubst");
		return;
	}
	/* special case: empty regexp */
	if (argv[3][0] == '\0') {
		const char *s;
		size_t len;
		if (argc > 4 && argv[4])
			len = FUNC10(argv[4]);
		else
			len = 0;
		for (s = argv[2]; *s != '\0'; s++) {
			FUNC1(argv[4], len);
			FUNC0(*s);
		}
	} else {
		int error;
		regex_t re;
		regmatch_t *pmatch;
		int mode = REG_EXTENDED;
		const char *source;
		size_t l = FUNC10(argv[3]);

		if (!mimic_gnu ||
		    (argv[3][0] == '^') ||
		    (l > 0 && argv[3][l-1] == '$'))
			mode |= REG_NEWLINE;

		source = mimic_gnu ? FUNC11(argv[3]) : argv[3];
		error = FUNC8(&re, source, mode);
		if (error != 0)
			FUNC3(error, &re, source);

		pmatch = FUNC12(NULL, re.re_nsub+1, sizeof(regmatch_t),
		    NULL);
		FUNC2(argv[2], &re, source,
		    argc > 4 && argv[4] != NULL ? argv[4] : "", pmatch);
		FUNC4(pmatch);
		FUNC9(&re);
	}
	FUNC7(FUNC5());
}