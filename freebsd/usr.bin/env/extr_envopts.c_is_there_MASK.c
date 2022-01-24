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
struct stat {int st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int env_verbosity ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC5(char *candidate)
{
        struct stat fin;

        /* XXX work around access(2) false positives for superuser */
        if (FUNC1(candidate, X_OK) == 0 &&
            FUNC4(candidate, &fin) == 0 &&
            FUNC0(fin.st_mode) &&
            (FUNC3() != 0 ||
            (fin.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH)) != 0)) {
                if (env_verbosity > 1)
			FUNC2(stderr, "#env   matched:\t'%s'\n", candidate);
                return (1);
        }
        return (0);
}