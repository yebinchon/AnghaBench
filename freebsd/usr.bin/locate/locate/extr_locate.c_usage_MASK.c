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

/* Variables and functions */
 char* _PATH_FCODES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2 ()
{
        (void)FUNC1(stderr,
	"usage: locate [-0Scims] [-l limit] [-d database] pattern ...\n\n");
        (void)FUNC1(stderr,
	"default database: `%s' or $LOCATE_PATH\n", _PATH_FCODES);
        FUNC0(1);
}