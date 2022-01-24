#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* cmd; char* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* functions ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static void
FUNC2(const char *what)
{
    int		i;

    if (what != NULL) {
	/* find a function that matches */
	for (i = 0; functions[i].cmd != NULL; i++)
	    if (!FUNC1(what, functions[i].cmd)) {
		FUNC0(stderr, "%s\n", functions[i].desc);
		return;
	    }
	FUNC0(stderr, "Unknown command '%s'\n", what);
    }
    
    /* print general help */
    FUNC0(stderr, "Valid commands are :\n");
    for (i = 0; functions[i].cmd != NULL; i++)
	FUNC0(stderr, "    %s\n", functions[i].cmd);
    FUNC0(stderr, "Use help <command> for command-specific help\n");
}