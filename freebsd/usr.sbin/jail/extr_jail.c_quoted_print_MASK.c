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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char) ; 

__attribute__((used)) static void
FUNC2(FILE *fp, char *str)
{
	int c, qc;
	char *p = str;

	qc = !*p ? '"'
	    : FUNC1(p, '\'') ? '"'
	    : FUNC1(p, '"') ? '\''
	    : FUNC1(p, ' ') || FUNC1(p, '\t') ? '"'
	    : 0;
	if (qc)
		FUNC0(qc, fp);
	while ((c = *p++)) {
		if (c == '\\' || c == qc)
			FUNC0('\\', fp);
		FUNC0(c, fp);
	}
	if (qc)
		FUNC0(qc, fp);
}