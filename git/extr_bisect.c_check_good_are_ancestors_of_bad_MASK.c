#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct repository {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct repository*,int,struct commit**,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct commit**,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  current_bad_oid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct commit** FUNC7 (struct repository*,int*) ; 
 char* FUNC8 (char*) ; 
 TYPE_1__ good_revs ; 
 int FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/  term_bad ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC12(struct repository *r,
					    const char *prefix,
					    int no_checkout)
{
	char *filename = FUNC8("BISECT_ANCESTORS_OK");
	struct stat st;
	int fd, rev_nr;
	struct commit **rev;

	if (!current_bad_oid)
		FUNC5(FUNC1("a %s revision is needed"), term_bad);

	/* Check if file BISECT_ANCESTORS_OK exists. */
	if (!FUNC10(filename, &st) && FUNC0(st.st_mode))
		goto done;

	/* Bisecting with no good rev is ok. */
	if (good_revs.nr == 0)
		goto done;

	/* Check if all good revs are ancestor of the bad rev. */
	rev = FUNC7(r, &rev_nr);
	if (FUNC2(r, rev_nr, rev, prefix))
		FUNC3(rev_nr, rev, no_checkout);
	FUNC6(rev);

	/* Create file BISECT_ANCESTORS_OK. */
	fd = FUNC9(filename, O_CREAT | O_TRUNC | O_WRONLY, 0600);
	if (fd < 0)
		FUNC11(FUNC1("could not create file '%s'"),
			      filename);
	else
		FUNC4(fd);
 done:
	FUNC6(filename);
}