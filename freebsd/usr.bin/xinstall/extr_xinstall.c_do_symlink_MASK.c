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
typedef  int /*<<< orphan*/  tmpl ;
struct stat {int st_mode; int st_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int MAXPATHLEN ; 
 int NOCHANGEBITS ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ safecopy ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 int FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC9(const char *from_name, const char *to_name,
    const struct stat *target_sb)
{
	char tmpl[MAXPATHLEN];

	if (safecopy && target_sb != NULL) {
		(void)FUNC6(tmpl, sizeof(tmpl), "%s.inst.XXXXXX", to_name);
		/* This usage is safe. */
		if (FUNC3(tmpl) == NULL)
			FUNC1(EX_OSERR, "%s: mktemp", tmpl);

		if (FUNC7(from_name, tmpl) == -1)
			FUNC1(EX_OSERR, "symlink %s -> %s", from_name, tmpl);

		if (target_sb->st_mode & S_IFDIR && FUNC5(to_name) == -1) {
			(void)FUNC8(tmpl);
			FUNC1(EX_OSERR, "%s", to_name);
		}
#if HAVE_STRUCT_STAT_ST_FLAGS
		if (target_sb->st_flags & NOCHANGEBITS)
			(void)chflags(to_name, target_sb->st_flags &
			     ~NOCHANGEBITS);
#endif
		if (verbose)
			FUNC2("install: symlink %s -> %s\n",
			    from_name, to_name);
		if (FUNC4(tmpl, to_name) == -1) {
			/* Remove temporary link before exiting. */
			(void)FUNC8(tmpl);
			FUNC1(EX_OSERR, "%s: rename", to_name);
		}
	} else {
		if (verbose)
			FUNC2("install: symlink %s -> %s\n",
			    from_name, to_name);
		if (FUNC7(from_name, to_name) == -1)
			FUNC1(EX_OSERR, "symlink %s -> %s", from_name, to_name);
	}
}