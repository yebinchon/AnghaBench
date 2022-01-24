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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC2()
{
    FUNC1(stderr, "usage: pppctl [-v] [-t n] [-p passwd] "
            "Port|LocalSock [command[;command]...]\n");
    FUNC1(stderr, "              -v tells pppctl to output all"
            " conversation\n");
    FUNC1(stderr, "              -t n specifies a timeout of n"
            " seconds when connecting (default 2)\n");
    FUNC1(stderr, "              -p passwd specifies your password\n");
    FUNC0(1);
}