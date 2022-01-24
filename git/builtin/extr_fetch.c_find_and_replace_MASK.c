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
struct strbuf {char const* buf; int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int,int,char const*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int FUNC4(struct strbuf *haystack,
			    const char *needle,
			    const char *placeholder)
{
	const char *p = NULL;
	int plen, nlen;

	nlen = FUNC2(needle);
	if (FUNC0(haystack->buf, needle))
		p = haystack->buf + haystack->len - nlen;
	else
		p = FUNC3(haystack->buf, needle);
	if (!p)
		return 0;

	if (p > haystack->buf && p[-1] != '/')
		return 0;

	plen = FUNC2(p);
	if (plen > nlen && p[nlen] != '/')
		return 0;

	FUNC1(haystack, p - haystack->buf, nlen,
		      placeholder, FUNC2(placeholder));
	return 1;
}