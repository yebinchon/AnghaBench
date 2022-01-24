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
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(int indent, const char *prefix, const char *type)
{
	if (indent) {
		FUNC0(fout, ",\n");
		FUNC2(fout, indent);
	} else  {
		FUNC0(fout, ", ");
	}
	if (FUNC1(type, "bool")) {
		FUNC0(fout, "sizeof (bool_t), (xdrproc_t) xdr_bool");
	} else {
		FUNC0(fout, "sizeof (");
		if (FUNC3(type) && prefix) {
			FUNC0(fout, "%s ", prefix);
		}
		FUNC0(fout, "%s), (xdrproc_t) xdr_%s", type, type);
	}
}