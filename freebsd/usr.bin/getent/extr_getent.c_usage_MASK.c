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
struct getentdb {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  RV_USAGE ; 
 struct getentdb* databases ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC3(void)
{
	struct getentdb	*curdb;

	FUNC1(stderr, "Usage: %s database [key ...]\n",
	    FUNC2());
	FUNC1(stderr, "       database may be one of:\n\t");
	for (curdb = databases; curdb->name != NULL; curdb++) {
		FUNC1(stderr, " %s", curdb->name);
	}
	FUNC1(stderr, "\n");
	FUNC0(RV_USAGE);
	/* NOTREACHED */
}