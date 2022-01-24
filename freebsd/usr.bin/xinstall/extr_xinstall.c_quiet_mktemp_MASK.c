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
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(char *template)
{
	int fd;

	if ((fd = FUNC2(template)) == -1)
		return (NULL);
	FUNC0 (fd);
	if (FUNC3(template) == -1)
		FUNC1(EX_OSERR, "unlink %s", template);
	return (template);
}