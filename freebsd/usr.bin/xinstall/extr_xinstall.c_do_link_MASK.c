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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ safecopy ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC9(const char *from_name, const char *to_name,
    const struct stat *target_sb)
{
	char tmpl[MAXPATHLEN];
	int ret;

	if (safecopy && target_sb != NULL) {
		(void)FUNC7(tmpl, sizeof(tmpl), "%s.inst.XXXXXX", to_name);
		/* This usage is safe. */
		if (FUNC4(tmpl) == NULL)
			FUNC1(EX_OSERR, "%s: mktemp", tmpl);
		ret = FUNC2(from_name, tmpl);
		if (ret == 0) {
			if (target_sb->st_mode & S_IFDIR && FUNC6(to_name) ==
			    -1) {
				FUNC8(tmpl);
				FUNC1(EX_OSERR, "%s", to_name);
			}
#if HAVE_STRUCT_STAT_ST_FLAGS
			if (target_sb->st_flags & NOCHANGEBITS)
				(void)chflags(to_name, target_sb->st_flags &
				     ~NOCHANGEBITS);
#endif
			if (verbose)
				FUNC3("install: link %s -> %s\n",
				    from_name, to_name);
			ret = FUNC5(tmpl, to_name);
			/*
			 * If rename has posix semantics, then the temporary
			 * file may still exist when from_name and to_name point
			 * to the same file, so unlink it unconditionally.
			 */
			(void)FUNC8(tmpl);
		}
		return (ret);
	} else {
		if (verbose)
			FUNC3("install: link %s -> %s\n",
			    from_name, to_name);
		return (FUNC2(from_name, to_name));
	}
}