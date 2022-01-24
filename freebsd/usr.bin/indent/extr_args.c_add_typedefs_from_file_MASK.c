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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC6 (char*,char*) ; 

void
FUNC7(const char *str)
{
    FILE *file;
    char line[BUFSIZ];

    if ((file = FUNC4(str, "r")) == NULL) {
	FUNC5(stderr, "indent: cannot open file %s\n", str);
	FUNC1(1);
    }
    while ((FUNC3(line, BUFSIZ, file)) != NULL) {
	/* Remove trailing whitespace */
	line[FUNC6(line, " \t\n\r")] = '\0';
	FUNC0(line);
    }
    FUNC2(file);
}