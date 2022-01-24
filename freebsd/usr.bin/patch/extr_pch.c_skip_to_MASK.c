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
typedef  scalar_t__ off_t ;
typedef  scalar_t__ LINENUM ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ p_base ; 
 scalar_t__ p_input_line ; 
 int /*<<< orphan*/  pfp ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC5(off_t file_pos, LINENUM file_line)
{
	size_t	len;

	if (p_base > file_pos)
		FUNC0("Internal error: seek %lld>%lld\n",
		   (long long)p_base, (long long)file_pos);
	if (verbose && p_base < file_pos) {
		FUNC1(pfp, p_base, SEEK_SET);
		FUNC4("The text leading up to this was:\n--------------------------\n");
		while (FUNC2(pfp) < file_pos) {
			len = FUNC3(false);
			if (len == 0)
				FUNC0("Unexpected end of file\n");
			FUNC4("|%s", buf);
		}
		FUNC4("--------------------------\n");
	} else
		FUNC1(pfp, file_pos, SEEK_SET);
	p_input_line = file_line - 1;
}