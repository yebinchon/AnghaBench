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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  gitdir; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  WM_PATHNAME ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 TYPE_1__* the_repository ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *cond, size_t cond_len)
{
	int flags;
	int ret;
	struct strbuf pattern = STRBUF_INIT;
	const char *refname = !the_repository->gitdir ?
		NULL : FUNC1("HEAD", 0, NULL, &flags);
	const char *shortname;

	if (!refname || !(flags & REF_ISSYMREF)	||
			!FUNC2(refname, "refs/heads/", &shortname))
		return 0;

	FUNC3(&pattern, cond, cond_len);
	FUNC0(&pattern);
	ret = !FUNC5(pattern.buf, shortname, WM_PATHNAME);
	FUNC4(&pattern);
	return ret;
}