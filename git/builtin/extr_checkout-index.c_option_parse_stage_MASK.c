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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char CHECKOUT_ALL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char checkout_stage ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int to_tempfile ; 

__attribute__((used)) static int FUNC4(const struct option *opt,
			      const char *arg, int unset)
{
	FUNC0(unset);

	if (!FUNC3(arg, "all")) {
		to_tempfile = 1;
		checkout_stage = CHECKOUT_ALL;
	} else {
		int ch = arg[0];
		if ('1' <= ch && ch <= '3')
			checkout_stage = arg[0] - '0';
		else
			FUNC2(FUNC1("stage should be between 1 and 3 or all"));
	}
	return 0;
}