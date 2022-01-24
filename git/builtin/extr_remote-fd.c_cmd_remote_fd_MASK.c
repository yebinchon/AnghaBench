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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usage_msg ; 

int FUNC4(int argc, const char **argv, const char *prefix)
{
	int input_fd = -1;
	int output_fd = -1;
	char *end;

	if (argc != 3)
		FUNC3(usage_msg);

	input_fd = (int)FUNC2(argv[2], &end, 10);

	if ((end == argv[2]) || (*end != ',' && *end != '/' && *end))
		FUNC1("Bad URL syntax");

	if (*end == '/' || !*end) {
		output_fd = input_fd;
	} else {
		char *end2;
		output_fd = (int)FUNC2(end + 1, &end2, 10);

		if ((end2 == end + 1) || (*end2 != '/' && *end2))
			FUNC1("Bad URL syntax");
	}

	FUNC0(input_fd, output_fd);
	return 0;
}