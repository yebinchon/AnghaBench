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
struct TYPE_2__ {char* cmd; char* text; char* desc; } ;

/* Variables and functions */
 TYPE_1__* commands ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[]) 
{
    int		i;
    
    if (argc > 1)
	for (i = 0; commands[i].cmd != NULL; i++)
	    if (!FUNC2(argv[1], commands[i].cmd)) {
		FUNC1(stderr, "%s\n", commands[i].text);
		FUNC0(stderr);
		return(0);
	    }

    if (argv != NULL)
	FUNC1(stderr, "Unknown command '%s'.\n", argv[1]);    
    FUNC1(stderr, "Valid commands are:\n");
    for (i = 0; commands[i].cmd != NULL; i++)
	FUNC1(stderr, "  %-20s %s\n", commands[i].cmd, commands[i].desc);
    FUNC0(stderr);
    return(0);
}