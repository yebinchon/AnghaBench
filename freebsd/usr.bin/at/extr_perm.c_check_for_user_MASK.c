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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,size_t) ; 

__attribute__((used)) static int FUNC7(FILE *fp,const char *name)
{
    char *buffer;
    size_t len;
    int found = 0;

    len = FUNC5(name);
    if ((buffer = FUNC4(len+2)) == NULL)
	FUNC0(EXIT_FAILURE, "virtual memory exhausted");

    while(FUNC2(buffer, len+2, fp) != NULL)
    {
	if ((FUNC6(name, buffer, len) == 0) &&
	    (buffer[len] == '\n'))
	{
	    found = 1;
	    break;
	}
    }
    FUNC1(fp);
    FUNC3(buffer);
    return found;
}