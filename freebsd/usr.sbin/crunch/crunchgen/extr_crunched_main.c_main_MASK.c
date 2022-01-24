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
struct stub {int (* f ) (int,char**,char**) ;int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 char* EXECNAME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct stub* entry_points ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (int,char**,char**) ; 

int
FUNC5(int argc, char **argv, char **envp)
{
    char *slash, *basename;
    struct stub *ep;

    if(argv[0] == NULL || *argv[0] == '\0')
	FUNC0();

    slash = FUNC3(argv[0], '/');
    basename = slash? slash+1 : argv[0];

    for(ep=entry_points; ep->name != NULL; ep++)
	if(!FUNC2(basename, ep->name)) break;

    if(ep->name)
	return ep->f(argc, argv, envp);
    else {
	FUNC1(stderr, "%s: %s not compiled in\n", EXECNAME, basename);
	FUNC0();
    }
}