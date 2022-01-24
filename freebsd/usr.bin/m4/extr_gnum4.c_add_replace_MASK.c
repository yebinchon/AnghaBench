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
typedef  int /*<<< orphan*/  regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ mimic_gnu ; 

__attribute__((used)) static void
FUNC3(const char *string, regex_t *re, const char *replace, regmatch_t *pm)
{
	const char *p;

	for (p = replace; *p != '\0'; p++) {
		if (*p == '&' && !mimic_gnu) {
			FUNC0(0, string, re, pm);
			continue;
		}
		if (*p == '\\') {
			if (p[1] == '\\') {
				FUNC1(p[1]);
				p++;
				continue;
			}
			if (p[1] == '&') {
				if (mimic_gnu)
					FUNC0(0, string, re, pm);
				else
					FUNC1(p[1]);
				p++;
				continue;
			}
			if (FUNC2((unsigned char)p[1])) {
				FUNC0(*(++p) - '0', string, re, pm);
				continue;
			}
		}
		FUNC1(*p);
	}
}