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
struct TYPE_2__ {int (* func ) (int,char**) ;int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int FUNC0 (int,char**) ; 
 TYPE_1__* commands ; 
 int FUNC1 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char**) ; 

int
FUNC4(int argc, char *argv[])
{
    int		ch, i, oargc;
    char	**oargv;
    
    oargc = argc;
    oargv = argv;
    while ((ch = FUNC1(argc, argv, "")) != -1)
	switch(ch) {
	default:
	    return(FUNC0(0, NULL));
	}

    argc -= optind;
    argv += optind;
    
    if (argc > 0)
	for (i = 0; commands[i].cmd != NULL; i++)
	    if (!FUNC2(argv[0], commands[i].cmd))
		return(commands[i].func(argc, argv));

    return(FUNC0(oargc, oargv));
}