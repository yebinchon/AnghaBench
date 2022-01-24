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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ guess_remote ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 char* FUNC4 (char const*,struct object_id*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int*) ; 
 char* FUNC6 (char const*,int) ; 

__attribute__((used)) static const char *FUNC7(const char *path, const char **new_branch)
{
	int n;
	const char *s = FUNC5(path, &n);
	const char *branchname = FUNC6(s, n);
	struct strbuf ref = STRBUF_INIT;

	FUNC0(branchname);
	if (!FUNC2(&ref, branchname) &&
	    FUNC1(ref.buf)) {
		FUNC3(&ref);
		return branchname;
	}

	*new_branch = branchname;
	if (guess_remote) {
		struct object_id oid;
		const char *remote =
			FUNC4(*new_branch, &oid, NULL);
		return remote;
	}
	return NULL;
}