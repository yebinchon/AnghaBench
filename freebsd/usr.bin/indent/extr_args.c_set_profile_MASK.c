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
typedef  int /*<<< orphan*/  fname ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 char* FUNC2 (char*) ; 
 char* option_source ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,...) ; 

void
FUNC5(const char *profile_name)
{
    FILE *f;
    char fname[PATH_MAX];
    static char prof[] = ".indent.pro";

    if (profile_name == NULL)
	FUNC4(fname, sizeof(fname), "%s/%s", FUNC2("HOME"), prof);
    else
	FUNC4(fname, sizeof(fname), "%s", profile_name + 2);
    if ((f = FUNC1(option_source = fname, "r")) != NULL) {
	FUNC3(f);
	(void) FUNC0(f);
    }
    if ((f = FUNC1(option_source = prof, "r")) != NULL) {
	FUNC3(f);
	(void) FUNC0(f);
    }
    option_source = "Command line";
}