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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ motdinterrupt ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigint ; 

__attribute__((used)) static int
FUNC7(const char *motdfile)
{
	struct sigaction newint, oldint;
	FILE *f;
	int ch;

	if ((f = FUNC3(motdfile, "r")) == NULL)
		return (-1);
	motdinterrupt = 0;
	newint.sa_handler = sigint;
	newint.sa_flags = 0;
	FUNC6(&newint.sa_mask);
	FUNC5(SIGINT, &newint, &oldint);
	while ((ch = FUNC2(f)) != EOF && !motdinterrupt)
		FUNC4(ch);
	FUNC5(SIGINT, &oldint, NULL);
	if (ch != EOF || FUNC1(f)) {
		FUNC0(f);
		return (-1);
	}
	FUNC0(f);
	return (0);
}