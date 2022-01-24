#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  regmatch_t ;
struct TYPE_7__ {scalar_t__ re_nsub; } ;
typedef  TYPE_1__ regex_t ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ mimic_gnu ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 char const* FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 

void
FUNC10(const char *argv[], int argc)
{
	int error;
	regex_t re;
	regmatch_t *pmatch;
	const char *source;

	if (argc <= 3) {
		FUNC4("Too few arguments to regexp");
		return;
	}
	/* special gnu case */
	if (argv[3][0] == '\0' && mimic_gnu) {
		if (argc == 4 || argv[4] == NULL)
			return;
		else
			FUNC5(argv[4]);
	}
	source = mimic_gnu ? FUNC8(argv[3]) : argv[3];
	error = FUNC6(&re, source, REG_EXTENDED|REG_NEWLINE);
	if (error != 0)
		FUNC2(error, &re, source);

	pmatch = FUNC9(NULL, re.re_nsub+1, sizeof(regmatch_t), NULL);
	if (argc == 4 || argv[4] == NULL)
		FUNC1(argv[2], &re, source, pmatch);
	else
		FUNC0(argv[2], &re, source, argv[4], pmatch);
	FUNC3(pmatch);
	FUNC7(&re);
}