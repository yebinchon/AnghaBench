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
struct utmpx {short ut_type; int /*<<< orphan*/  ut_tv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct utmpx*) ; 

__attribute__((used)) static int
FUNC3(short type)
{
	struct utmpx utx = { .ut_type = type };

	(void)FUNC0(&utx.ut_tv, NULL);
	if (FUNC2(&utx) == NULL) {
		FUNC1("pututxline");
		return (1);
	}
	return (0);
}