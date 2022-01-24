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
struct message {int m_lines; } ;
typedef  int /*<<< orphan*/  linebuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINESIZE ; 
 int FUNC0 (char*) ; 
 struct message* dot ; 
 struct message* message ; 
 int msgCount ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct message*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct message*) ; 
 char* FUNC8 (char*) ; 

int
FUNC9(void *v)
{
	int *msgvec = v;
	int *ip;
	struct message *mp;
	int c, topl, lines, lineb;
	char *valtop, linebuf[LINESIZE];
	FILE *ibuf;

	topl = 5;
	valtop = FUNC8("toplines");
	if (valtop != NULL) {
		topl = FUNC0(valtop);
		if (topl < 0 || topl > 10000)
			topl = 5;
	}
	lineb = 1;
	for (ip = msgvec; *ip && ip-msgvec < msgCount; ip++) {
		mp = &message[*ip - 1];
		FUNC7(mp);
		dot = mp;
		if (FUNC8("quiet") == NULL)
			FUNC1("Message %d:\n", *ip);
		ibuf = FUNC4(mp);
		c = mp->m_lines;
		if (!lineb)
			FUNC1("\n");
		for (lines = 0; lines < c && lines <= topl; lines++) {
			if (FUNC3(ibuf, linebuf, sizeof(linebuf)) < 0)
				break;
			FUNC2(linebuf);
			lineb = FUNC6(linebuf, " \t") == FUNC5(linebuf);
		}
	}
	return (0);
}