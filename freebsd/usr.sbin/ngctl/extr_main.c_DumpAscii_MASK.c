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
 int DUMP_BYTES_PER_LINE ; 
 scalar_t__ FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int FUNC3 (char*) ; 

void
FUNC4(const u_char *buf, int len)
{
	char ch, sbuf[100];
	int k, count;

	for (count = 0; count < len; count += DUMP_BYTES_PER_LINE) {
		FUNC2(sbuf, sizeof(sbuf), "%04x:  ", count);
		for (k = 0; k < DUMP_BYTES_PER_LINE; k++) {
			if (count + k < len) {
				FUNC2(sbuf + FUNC3(sbuf),
				    sizeof(sbuf) - FUNC3(sbuf),
				    "%02x ", buf[count + k]);
			} else {
				FUNC2(sbuf + FUNC3(sbuf),
				    sizeof(sbuf) - FUNC3(sbuf), "   ");
			}
		}
		FUNC2(sbuf + FUNC3(sbuf), sizeof(sbuf) - FUNC3(sbuf), " ");
		for (k = 0; k < DUMP_BYTES_PER_LINE; k++) {
			if (count + k < len) {
				ch = FUNC0(buf[count + k]) ?
				    buf[count + k] : '.';
				FUNC2(sbuf + FUNC3(sbuf),
				    sizeof(sbuf) - FUNC3(sbuf), "%c", ch);
			} else {
				FUNC2(sbuf + FUNC3(sbuf),
				    sizeof(sbuf) - FUNC3(sbuf), " ");
			}
		}
		FUNC1("%s\n", sbuf);
	}
}