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
typedef  int /*<<< orphan*/  outbuf ;
typedef  int /*<<< orphan*/  inbuf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int FUNC0 (char*,unsigned char*,int) ; 
 int FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  outfp ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(void)
{
	int n, count, count4;
	char inbuf[MAXPATHLEN + 1], *p;
	unsigned char outbuf[MAXPATHLEN * 4];
	char leftover[MAXPATHLEN + 1];

	leftover[0] = '\0';
	for (;;) {
		FUNC5(inbuf, leftover);
		switch (FUNC3(inbuf + FUNC6(inbuf),
		    sizeof(inbuf) - FUNC6(inbuf))) {
		case 0:
			return (0);
		case 1:
			return (1);
		}

		count = 0;
		count4 = -1;
		p = inbuf;
		while (*p != '\0') {
			/*
			 * Base64 encoded strings have the following
			 * characters in them: A-Z, a-z, 0-9 and +, / and =
			 */
			if (FUNC4(*p) || *p == '+' || *p == '/' || *p == '=')
				count++;
			if (count % 4 == 0)
				count4 = p - inbuf;
			p++;
		}

		FUNC5(leftover, inbuf + count4 + 1);
		inbuf[count4 + 1] = 0;

		n = FUNC0(inbuf, outbuf, sizeof(outbuf));

		if (n < 0)
			break;
		FUNC2(outbuf, 1, n, outfp);
	}
	return (FUNC1(inbuf, "====", "error decoding base64 input stream"));
}