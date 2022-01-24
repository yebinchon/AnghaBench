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
struct credential {int dummy; } ;

/* Variables and functions */
 struct credential CREDENTIAL_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct credential*) ; 
 int /*<<< orphan*/  FUNC1 (struct credential*) ; 
 scalar_t__ FUNC2 (struct credential*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct credential*) ; 
 int /*<<< orphan*/  FUNC4 (struct credential*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usage_msg ; 

int FUNC8(int argc, const char **argv, const char *prefix)
{
	const char *op;
	struct credential c = CREDENTIAL_INIT;

	if (argc != 2 || !FUNC6(argv[1], "-h"))
		FUNC7(usage_msg);
	op = argv[1];

	if (FUNC2(&c, stdin) < 0)
		FUNC5("unable to read credential from stdin");

	if (!FUNC6(op, "fill")) {
		FUNC1(&c);
		FUNC4(&c, stdout);
	} else if (!FUNC6(op, "approve")) {
		FUNC0(&c);
	} else if (!FUNC6(op, "reject")) {
		FUNC3(&c);
	} else {
		FUNC7(usage_msg);
	}
	return 0;
}