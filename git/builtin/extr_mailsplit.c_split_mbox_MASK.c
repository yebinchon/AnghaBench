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
 int EOF ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*,char const*,int,int) ; 

__attribute__((used)) static int FUNC13(const char *file, const char *dir, int allow_bare,
		      int nr_prec, int skip)
{
	int ret = -1;
	int peek;

	FILE *f = !FUNC10(file, "-") ? stdin : FUNC5(file, "r");
	int file_done = 0;

	if (!f) {
		FUNC2("cannot open mbox %s", file);
		goto out;
	}

	do {
		peek = FUNC4(f);
		if (peek == EOF) {
			if (f == stdin)
				/* empty stdin is OK */
				ret = skip;
			else {
				FUNC3(f);
				FUNC1(FUNC0("empty mbox: '%s'"), file);
			}
			goto out;
		}
	} while (FUNC7(peek));
	FUNC11(peek, f);

	if (FUNC9(&buf, f, '\n')) {
		/* empty stdin is OK */
		if (f != stdin) {
			FUNC1("cannot read mbox %s", file);
			goto out;
		}
		file_done = 1;
	}

	while (!file_done) {
		char *name = FUNC12("%s/%0*d", dir, nr_prec, ++skip);
		file_done = FUNC8(f, name, allow_bare);
		FUNC6(name);
	}

	if (f != stdin)
		FUNC3(f);

	ret = skip;
out:
	return ret;
}