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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int LINENUM ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TMPINNAME ; 
 char** i_ptr ; 
 int input_lines ; 
 int lines_per_buf ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char** tibuf ; 
 int tibuflen ; 
 int /*<<< orphan*/  tifd ; 
 int* tiline ; 
 int tireclen ; 
 scalar_t__ using_plan_a ; 
 int warn_on_invalid_line ; 

char *
FUNC4(LINENUM line, int whichbuf)
{
	if (line < 1 || line > input_lines) {
		if (warn_on_invalid_line) {
			FUNC3("No such line %ld in input file, ignoring\n", line);
			warn_on_invalid_line = false;
		}
		return NULL;
	}
	if (using_plan_a)
		return i_ptr[line];
	else {
		LINENUM	offline = line % lines_per_buf;
		LINENUM	baseline = line - offline;

		if (tiline[0] == baseline)
			whichbuf = 0;
		else if (tiline[1] == baseline)
			whichbuf = 1;
		else {
			tiline[whichbuf] = baseline;

			if (FUNC0(tifd, (off_t) (baseline / lines_per_buf *
			    tibuflen), SEEK_SET) < 0)
				FUNC1("cannot seek in the temporary input file");

			if (FUNC2(tifd, tibuf[whichbuf], tibuflen) !=
			    (ssize_t) tibuflen)
				FUNC1("error reading tmp file %s", TMPINNAME);
		}
		return tibuf[whichbuf] + (tireclen * offline);
	}
}