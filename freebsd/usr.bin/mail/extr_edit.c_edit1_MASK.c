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
struct message {long m_size; scalar_t__ m_lines; int /*<<< orphan*/  m_flag; int /*<<< orphan*/  m_offset; int /*<<< orphan*/  m_block; } ;
typedef  int /*<<< orphan*/  sig_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MODIFY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct message* dot ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 struct message* message ; 
 int msgCount ; 
 int /*<<< orphan*/  otf ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  readonly ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct message*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC15 (struct message*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int *msgvec, int type)
{
	int c, i;
	FILE *fp;
	struct message *mp;
	off_t size;

	/*
	 * Deal with each message to be edited . . .
	 */
	for (i = 0; i < msgCount && msgvec[i]; i++) {
		sig_t sigint;

		if (i > 0) {
			char buf[100];
			char *p;

			FUNC9("Edit message %d [ynq]? ", msgvec[i]);
			if (FUNC4(buf, sizeof(buf), stdin) == NULL)
				break;
			for (p = buf; *p == ' ' || *p == '\t'; p++)
				;
			if (*p == 'q')
				break;
			if (*p == 'n')
				continue;
		}
		dot = mp = &message[msgvec[i] - 1];
		FUNC15(mp);
		sigint = FUNC14(SIGINT, SIG_IGN);
		fp = FUNC12(FUNC13(mp), mp->m_size, type, readonly);
		if (fp != NULL) {
			(void)FUNC5(otf, (off_t)0, SEEK_END);
			size = FUNC7(otf);
			mp->m_block = FUNC1(size);
			mp->m_offset = FUNC2(size);
			mp->m_size = (long)FUNC6(fp);
			mp->m_lines = 0;
			mp->m_flag |= MODIFY;
			FUNC11(fp);
			while ((c = FUNC8(fp)) != EOF) {
				if (c == '\n')
					mp->m_lines++;
				if (FUNC10(c, otf) == EOF)
					break;
			}
			if (FUNC3(otf))
				FUNC16("/tmp");
			(void)FUNC0(fp);
		}
		(void)FUNC14(SIGINT, sigint);
	}
	return (0);
}