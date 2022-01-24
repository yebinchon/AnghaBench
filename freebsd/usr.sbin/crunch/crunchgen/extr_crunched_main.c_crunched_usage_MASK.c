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
struct stub {char* name; } ;

/* Variables and functions */
 char* EXECNAME ; 
 struct stub* entry_points ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3()
{
    int columns, len;
    struct stub *ep;

    FUNC1(stderr, "usage: %s <prog> <args> ..., where <prog> is one of:\n",
	    EXECNAME);
    columns = 0;
    for(ep=entry_points; ep->name != NULL; ep++) {
	len = FUNC2(ep->name) + 1;
	if(columns+len < 80)
	    columns += len;
	else {
	    FUNC1(stderr, "\n");
	    columns = len;
	}
	FUNC1(stderr, " %s", ep->name);
    }
    FUNC1(stderr, "\n");
    FUNC0(1);
}