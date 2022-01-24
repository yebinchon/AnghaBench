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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char*,char*,char const*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC7(const char *pmc, int out_so_far)
{
	FILE *io;
	pid_t pid_of_command=0;	
	char my_command[1024];
	char line[1024];
	char resp[1024];
	int len, llen, i;

	if (out_so_far < 50) {
		len = 50 - out_so_far;
		for(i=0; i<len; i++) {
			FUNC3(" ");
		}
	}
	FUNC4(my_command, "/usr/sbin/pmcstat -w .25 -c 0 -s %s", pmc);
	io = FUNC2(my_command, "r", &pid_of_command);	
	if (io == NULL) {
		FUNC3("Failed -- popen fails\n");
		return;
	}
	/* Setup what we expect */
	len = FUNC4(resp, "%s", pmc);
	if (FUNC0(line, sizeof(line), io) == NULL) {
		FUNC3("Failed -- no output from pmstat\n");
		goto out;
	}
	llen = FUNC5(line);
	if (line[(llen-1)] == '\n') {
		line[(llen-1)] = 0;
		llen--;
	}
	for(i=2; i<(llen-len); i++) {
		if (FUNC6(&line[i], "ERROR", 5) == 0) {
			FUNC3("Failed %s\n", line);
			goto out;
		} else if (FUNC6(&line[i], resp, len) == 0) {
			int j, k;

			if (FUNC0(line, sizeof(line), io) == NULL) {
				FUNC3("Failed -- no second output from pmstat\n");
				goto out;
			}
			len = FUNC5(line);
			for (j=0; j<len; j++) {
				if (line[j] == ' ') {
					j++; 
				} else {
					break;
				}
			}
			FUNC3("Pass");
			len = FUNC5(&line[j]);
			if (len < 20) {
				for(k=0; k<(20-len); k++) {
					FUNC3(" ");
				}
			}
			if (len) {
				FUNC3("%s", &line[j]);
			} else {
				FUNC3("\n");
			}
			goto out;
		}
	}
	FUNC3("Failed -- '%s' not '%s'\n", line, resp);
out:
	FUNC1(io, pid_of_command);		
	
}