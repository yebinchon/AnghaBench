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
typedef  int u_char ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC4(u_char *buf, int len)
{
	char    ch, sbuf[100];
	int     k, count;

	for (count = 0; count < len; count += 16) {
		FUNC1(sbuf, sizeof(sbuf), "%04x:  ", count);
		for (k = 0; k < 16; k++)
			if (count + k < len)
				FUNC1(sbuf + FUNC2(sbuf),
				    sizeof(sbuf) - FUNC2(sbuf),
				    "%02x ", buf[count + k]);
			else
				FUNC1(sbuf + FUNC2(sbuf),
				    sizeof(sbuf) - FUNC2(sbuf), "   ");
		FUNC1(sbuf + FUNC2(sbuf), sizeof(sbuf) - FUNC2(sbuf), " ");
		for (k = 0; k < 16; k++)
			if (count + k < len) {
				ch = FUNC0(buf[count + k]) ?
				    buf[count + k] : '.';
				FUNC1(sbuf + FUNC2(sbuf),
				    sizeof(sbuf) - FUNC2(sbuf), "%c", ch);
			} else
				FUNC1(sbuf + FUNC2(sbuf),
				    sizeof(sbuf) - FUNC2(sbuf), " ");
		FUNC1(sbuf + FUNC2(sbuf),
		    sizeof(sbuf) - FUNC2(sbuf), "\n");
		(void) FUNC3(outfd, sbuf, FUNC2(sbuf));
	}
	ch = '\n';
	FUNC3(outfd, &ch, 1);
}