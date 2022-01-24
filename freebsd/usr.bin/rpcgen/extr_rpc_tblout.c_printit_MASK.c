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

/* Variables and functions */
 int TABCOUNT ; 
 int TABSIZE ; 
 int TABSTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/ * tabstr ; 

__attribute__((used)) static void
FUNC5(const char *prefix, const char *type)
{
	int len;
	int tabs;


 	len = FUNC1(fout, "\txdr_%s,", FUNC4(type));
	/* account for leading tab expansion */
	len += TABSIZE - 1;
	/* round up to tabs required */
	tabs = (TABSTOP - len + TABSIZE - 1)/TABSIZE;
	FUNC0(fout, "%s", &tabstr[TABCOUNT-tabs]);

	if (FUNC3(type, "void")) {
		FUNC0(fout, "0");
	} else {
		FUNC0(fout, "sizeof ( ");
		/* XXX: should "follow" be 1 ??? */
		FUNC2(prefix, type, 0);
		FUNC0(fout, ")");
	}
	FUNC0(fout, ",\n");
}