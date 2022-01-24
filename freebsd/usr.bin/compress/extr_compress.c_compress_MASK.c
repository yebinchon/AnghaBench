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
struct stat {float st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int eval ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  force ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,struct stat*) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char const*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/ * FUNC12 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC13(const char *in, const char *out, int bits)
{
	size_t nr;
	struct stat isb, sb;
	FILE *ifp, *ofp;
	int exists, isreg, oreg;
	u_char buf[1024];

	exists = !FUNC10(out, &sb);
	if (!force && exists && FUNC0(sb.st_mode) && !FUNC8(out))
		return;
	isreg = oreg = !exists || FUNC0(sb.st_mode);

	ifp = ofp = NULL;
	if ((ifp = FUNC4(in, "r")) == NULL) {
		FUNC1("%s", in);
		return;
	}
	if (FUNC10(in, &isb)) {		/* DON'T FSTAT! */
		FUNC1("%s", in);
		goto err;
	}
	if (!FUNC0(isb.st_mode))
		isreg = 0;

	if ((ofp = FUNC12(out, "w", bits)) == NULL) {
		FUNC1("%s", out);
		goto err;
	}
	while ((nr = FUNC6(buf, 1, sizeof(buf), ifp)) != 0)
		if (FUNC7(buf, 1, nr, ofp) != nr) {
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
	ofp = NULL;

	if (isreg) {
		if (FUNC10(out, &sb)) {
			FUNC1("%s", out);
			goto err;
		}

		if (!force && sb.st_size >= isb.st_size) {
			if (verbose)
		(void)FUNC5(stderr, "%s: file would grow; left unmodified\n",
		    in);
			eval = 2;
			if (FUNC11(out))
				FUNC1("%s", out);
			goto err;
		}

		FUNC9(out, &isb);

		if (FUNC11(in))
			FUNC1("%s", in);

		if (verbose) {
			(void)FUNC5(stderr, "%s: ", out);
			if (isb.st_size > sb.st_size)
				(void)FUNC5(stderr, "%.0f%% compression\n",
				    ((float)sb.st_size / isb.st_size) * 100.0);
			else
				(void)FUNC5(stderr, "%.0f%% expansion\n",
				    ((float)isb.st_size / sb.st_size) * 100.0);
		}
	}
	return;

err:	if (ofp) {
		if (oreg)
			(void)FUNC11(out);
		(void)FUNC2(ofp);
	}
	if (ifp)
		(void)FUNC2(ifp);
}