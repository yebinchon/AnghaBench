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
struct strbuf {scalar_t__ buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char const*) ; 

char *FUNC6(const char *pfx, const char *arg)
{
	struct strbuf path = STRBUF_INIT;
	size_t pfx_len = pfx ? FUNC5(pfx) : 0;

	if (!pfx_len)
		; /* nothing to prefix */
	else if (FUNC1(arg))
		pfx_len = 0;
	else
		FUNC2(&path, pfx, pfx_len);

	FUNC3(&path, arg);
#ifdef GIT_WINDOWS_NATIVE
	convert_slashes(path.buf + pfx_len);
#endif
	return FUNC4(&path, NULL);
}