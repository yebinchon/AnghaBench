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
struct oidvalue {int dummy; } ;
struct oidname {int dummy; } ;
struct oidformat {int dummy; } ;
struct oiddescription {int dummy; } ;
struct oid {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct oid const*,struct oiddescription*) ; 
 int /*<<< orphan*/  FUNC3 (struct oid const*,struct oidformat*) ; 
 int /*<<< orphan*/  FUNC4 (struct oid const*,struct oidname*) ; 
 int /*<<< orphan*/  FUNC5 (struct oid const*,struct oidformat*,struct oidvalue*) ; 
 int /*<<< orphan*/  FUNC6 (struct oiddescription*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct oidname*) ; 
 int /*<<< orphan*/  FUNC8 (struct oidname*,struct oidformat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct oidvalue*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(const struct oid *o, struct oidname *on, bool print_description,
    FILE *fp)
{
	struct oidformat of;
	struct oidvalue ov;
	struct oiddescription od;

	if (!FUNC3(o, &of) || !FUNC5(o, &of, &ov))
		return;
	FUNC4(o, on);

	/*
	 * Print the line with the description. Prometheus expects a
	 * single unique description for every metric, which cannot be
	 * guaranteed by sysctl if labels are present. Omit the
	 * description if labels are present.
	 */
	if (print_description && !FUNC7(on) &&
	    FUNC2(o, &od)) {
		FUNC0(fp, "# HELP ");
		FUNC8(on, &of, fp);
		FUNC1(' ', fp);
		FUNC6(&od, fp);
		FUNC1('\n', fp);
	}

	/* Print the line with the value. */
	FUNC8(on, &of, fp);
	FUNC1(' ', fp);
	FUNC9(&ov, fp);
	FUNC1('\n', fp);
}