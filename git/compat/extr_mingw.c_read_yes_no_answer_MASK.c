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
typedef  int /*<<< orphan*/  answer ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  stdin ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char FUNC4 (char) ; 

__attribute__((used)) static int FUNC5(void)
{
	char answer[1024];

	if (FUNC0(answer, sizeof(answer), stdin)) {
		size_t answer_len = FUNC2(answer);
		int got_full_line = 0, c;

		/* remove the newline */
		if (answer_len >= 2 && answer[answer_len-2] == '\r') {
			answer[answer_len-2] = '\0';
			got_full_line = 1;
		} else if (answer_len >= 1 && answer[answer_len-1] == '\n') {
			answer[answer_len-1] = '\0';
			got_full_line = 1;
		}
		/* flush the buffer in case we did not get the full line */
		if (!got_full_line)
			while ((c = FUNC1()) != EOF && c != '\n')
				;
	} else
		/* we could not read, return the
		 * default answer which is no */
		return 0;

	if (FUNC4(answer[0]) == 'y' && !answer[1])
		return 1;
	if (!FUNC3(answer, "yes", sizeof(answer)))
		return 1;
	if (FUNC4(answer[0]) == 'n' && !answer[1])
		return 0;
	if (!FUNC3(answer, "no", sizeof(answer)))
		return 0;

	/* did not find an answer we understand */
	return -1;
}