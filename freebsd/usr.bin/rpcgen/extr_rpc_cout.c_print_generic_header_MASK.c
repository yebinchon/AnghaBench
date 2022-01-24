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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 

__attribute__((used)) static void
FUNC1(const char *procname, int pointerp)
{
	FUNC0(fout, "\n");
	FUNC0(fout, "bool_t\n");
	FUNC0(fout, "xdr_%s(", procname);
	FUNC0(fout, "XDR *xdrs, ");
	FUNC0(fout, "%s ", procname);
	if (pointerp)
		FUNC0(fout, "*");
	FUNC0(fout, "objp)\n{\n\n");
}