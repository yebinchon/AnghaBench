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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 char* FUNC4 (char**,char*) ; 

int
FUNC5(int argc, const char **argv)
{
	char *token;
	int i, error = 0, len = 0;

	for (i = 1; i < argc; i++)
		len += FUNC3(argv[i]) + 1;
	char inputbuf[len], *input = inputbuf;
	FUNC2(input, argv[1]);
	for (i = 2; i < argc; i++) {
		FUNC1(input, " ");
		FUNC1(input, argv[i]);
	}

	while ((token = FUNC4(&input, ";")) != NULL) {
		error = FUNC0(token);
		if (error != 0)
			return (error);
	}

	return (0);
}