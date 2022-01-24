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
struct TYPE_2__ {int /*<<< orphan*/  (* func ) (int,int,char**) ;int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _PATH_MEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* functions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char**) ; 

int
FUNC6(int argc, char *argv[])
{
    int		i, memfd;

    if (argc < 2) {
	FUNC2(NULL);
    } else {
	if ((memfd = FUNC3(_PATH_MEM, O_RDONLY)) == -1)
	    FUNC1(1, "can't open %s", _PATH_MEM);

	for (i = 0; functions[i].cmd != NULL; i++)
	    if (!FUNC4(argv[1], functions[i].cmd))
		break;
	functions[i].func(memfd, argc - 1, argv + 1);
	FUNC0(memfd);
    }
    return(0);
}