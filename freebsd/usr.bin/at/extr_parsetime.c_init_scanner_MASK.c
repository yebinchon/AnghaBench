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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int need ; 
 int sc_len ; 
 int /*<<< orphan*/ * sc_token ; 
 int scc ; 
 char** scp ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int argc, char **argv)
{
    scp = argv;
    scc = argc;
    need = 1;
    sc_len = 1;
    while (argc-- > 0)
	sc_len += FUNC2(*argv++);

    if ((sc_token = FUNC1(sc_len)) == NULL)
	FUNC0(EXIT_FAILURE, "virtual memory exhausted");
}