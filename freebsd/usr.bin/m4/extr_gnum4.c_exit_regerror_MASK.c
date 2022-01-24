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
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char*) ; 
 size_t FUNC1 (int,int /*<<< orphan*/ *,char*,size_t) ; 
 char* FUNC2 (size_t,char*,unsigned long) ; 

__attribute__((used)) static void
FUNC3(int er, regex_t *re, const char *source)
{
	size_t	errlen;
	char	*errbuf;

	errlen = FUNC1(er, re, NULL, 0);
	errbuf = FUNC2(errlen,
	    "malloc in regerror: %lu", (unsigned long)errlen);
	FUNC1(er, re, errbuf, errlen);
	FUNC0(1, "regular expression error in %s: %s.", source, errbuf);
}