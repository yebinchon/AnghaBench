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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int GROUPS ; 
 char** av ; 
 int FUNC0 (unsigned char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int mode ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  output ; 
 int /*<<< orphan*/  raw ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static void
FUNC5(void)
{
	/*
	 * Output must fit into 80 columns, chunks come in 4, leave 1.
	 */
#define	GROUPS	((80 / 4) - 1)
	unsigned char buf[3];
	char buf2[sizeof(buf) * 2 + 1];
	size_t n;
	int rv, sequence;

	sequence = 0;

	if (!raw)
		FUNC2(output, "begin-base64 %o %s\n", mode, *av);
	while ((n = FUNC3(buf, 1, sizeof(buf), stdin))) {
		++sequence;
		rv = FUNC0(buf, n, buf2, FUNC4(buf2));
		if (rv == -1)
			FUNC1(1, "b64_ntop: error encoding base64");
		FUNC2(output, "%s%s", buf2, (sequence % GROUPS) ? "" : "\n");
	}
	if (sequence % GROUPS)
		FUNC2(output, "\n");
	if (!raw)
		FUNC2(output, "====\n");
}