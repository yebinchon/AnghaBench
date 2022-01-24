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
struct message {int m_flag; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int MPRESERVE ; 
 int MTOUCH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* mailname ; 
 struct message* message ; 
 size_t msgCount ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int
FUNC12(FILE *res)
{
	struct message *mp;
	int p, c;
	FILE *obuf;

	p = 0;
	if ((obuf = FUNC1(mailname, "r+")) == NULL) {
		FUNC10("%s", mailname);
		return (-1);
	}
#ifndef APPEND
	if (res != NULL)
		while ((c = FUNC5(res)) != EOF)
			(void)FUNC7(c, obuf);
#endif
	for (mp = &message[0]; mp < &message[msgCount]; mp++)
		if ((mp->m_flag&MPRESERVE)||(mp->m_flag&MTOUCH)==0) {
			p++;
			if (FUNC8(mp, obuf, NULL, NULL) < 0) {
				FUNC11("%s", mailname);
				(void)FUNC0(obuf);
				return (-1);
			}
		}
#ifdef APPEND
	if (res != NULL)
		while ((c = getc(res)) != EOF)
			(void)putc(c, obuf);
#endif
	(void)FUNC4(obuf);
	FUNC9(obuf);
	if (FUNC3(obuf)) {
		FUNC10("%s", mailname);
		(void)FUNC0(obuf);
		return (-1);
	}
	if (res != NULL)
		(void)FUNC0(res);
	(void)FUNC0(obuf);
	FUNC2(mailname);
	if (p == 1)
		FUNC6("Held 1 message in %s\n", mailname);
	else
		FUNC6("Held %d messages in %s\n", p, mailname);
	return (0);
}