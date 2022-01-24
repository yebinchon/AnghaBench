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
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ guesslen ; 
 int maxblk ; 
 int /*<<< orphan*/  msg ; 
 int FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(int inp, int outp, char *outb)
{
	int eot, inmaxblk, inn, outmaxblk, outn;
	char *inb;

	inb = FUNC4(maxblk);
	inmaxblk = outmaxblk = maxblk;
	for (eot = 0;; guesslen = 0) {
		if ((inn = FUNC5(inp, inb, inmaxblk)) == -1) {
			if (guesslen)
				while (errno == EINVAL && (inmaxblk -= 1024)) {
					inn = FUNC5(inp, inb, inmaxblk);
					if (inn >= 0)
						goto r1;
				}
			FUNC6("read error");
			break;
		}
r1:		if ((outn = FUNC5(outp, outb, outmaxblk)) == -1) {
			if (guesslen)
				while (errno == EINVAL && (outmaxblk -= 1024)) {
					outn = FUNC5(outp, outb, outmaxblk);
					if (outn >= 0)
						goto r2;
				}
			FUNC6("read error");
			break;
		}
r2:		if (inn != outn) {
			FUNC2(msg,
			    "%s: tapes have different block sizes; %d != %d.\n",
			    "tcopy", inn, outn);
			break;
		}
		if (!inn) {
			if (eot++) {
				FUNC2(msg, "tcopy: tapes are identical.\n");
				FUNC3(inb);
				return;
			}
		} else {
			if (FUNC0(inb, outb, inn)) {
				FUNC2(msg,
				    "tcopy: tapes have different data.\n");
				break;
			}
			eot = 0;
		}
	}
	FUNC1(1);
}