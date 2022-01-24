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
typedef  int /*<<< orphan*/  u_char ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  force ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,struct stat*) ; 
 scalar_t__ FUNC9 (char const*,struct stat*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC12(const char *in, const char *out, int bits)
{
	size_t nr;
	struct stat sb;
	FILE *ifp, *ofp;
	int exists, isreg, oreg;
	u_char buf[1024];

	exists = !FUNC9(out, &sb);
	if (!force && exists && FUNC0(sb.st_mode) && !FUNC7(out))
		return;
	isreg = oreg = !exists || FUNC0(sb.st_mode);

	ifp = ofp = NULL;
	if ((ifp = FUNC11(in, "r", bits)) == NULL) {
		FUNC1("%s", in);
		return;
	}
	if (FUNC9(in, &sb)) {
		FUNC1("%s", in);
		goto err;
	}
	if (!FUNC0(sb.st_mode))
		isreg = 0;

	/*
	 * Try to read the first few uncompressed bytes from the input file
	 * before blindly truncating the output file.
	 */
	if ((nr = FUNC5(buf, 1, sizeof(buf), ifp)) == 0) {
		FUNC1("%s", in);
		(void)FUNC2(ifp);
		return;
	}
	if ((ofp = FUNC4(out, "w")) == NULL ||
	    (nr != 0 && FUNC6(buf, 1, nr, ofp) != nr)) {
		FUNC1("%s", out);
		if (ofp)
			(void)FUNC2(ofp);
		(void)FUNC2(ifp);
		return;
	}

	while ((nr = FUNC5(buf, 1, sizeof(buf), ifp)) != 0)
		if (FUNC6(buf, 1, nr, ofp) != nr) {
			FUNC1("%s", out);
			goto err;
		}

	if (FUNC3(ifp) || FUNC2(ifp)) {
		FUNC1("%s", in);
		goto err;
	}
	ifp = NULL;

	if (FUNC2(ofp)) {
		FUNC1("%s", out);
		goto err;
	}

	if (isreg) {
		FUNC8(out, &sb);

		if (FUNC10(in))
			FUNC1("%s", in);
	}
	return;

err:	if (ofp) {
		if (oreg)
			(void)FUNC10(out);
		(void)FUNC2(ofp);
	}
	if (ifp)
		(void)FUNC2(ifp);
}