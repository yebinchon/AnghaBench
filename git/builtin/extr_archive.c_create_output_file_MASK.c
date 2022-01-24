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
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (char const*,int,int) ; 

__attribute__((used)) static void FUNC5(const char *output_file)
{
	int output_fd = FUNC4(output_file, O_CREAT | O_WRONLY | O_TRUNC, 0666);
	if (output_fd < 0)
		FUNC2(FUNC0("could not create archive file '%s'"), output_file);
	if (output_fd != 1) {
		if (FUNC3(output_fd, 1) < 0)
			FUNC2(FUNC0("could not redirect output"));
		else
			FUNC1(output_fd);
	}
}