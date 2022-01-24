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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  File_list ; 
 scalar_t__ Fort_len ; 
 int /*<<< orphan*/  Fortbuf ; 
 int Found_one ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(void)
{
	Fort_len = FUNC3(File_list);
	FUNC0(2, (stderr, "Maximum length is %d\n", Fort_len));
	/* extra length, "%\n" is appended */
	Fortbuf = FUNC1((unsigned int) Fort_len + 10);

	Found_one = FALSE;
	FUNC2(File_list);

	return (Found_one);
}