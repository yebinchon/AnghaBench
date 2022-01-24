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
typedef  int /*<<< orphan*/  zname ;
struct message {int m_flag; } ;
typedef  int /*<<< orphan*/  fname ;

/* Variables and functions */
 int MDELETED ; 
 int MNEW ; 
 int MREAD ; 
 int MSAVED ; 
 int /*<<< orphan*/  PATHSIZE ; 
 scalar_t__ FUNC0 (char*,int) ; 
 char* mailname ; 
 struct message* message ; 
 size_t msgCount ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ readonly ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

int
FUNC6(int omsgCount)
{
	struct message *mp;
	int u, n, mdot, d, s;
	char fname[PATHSIZE+1], zname[PATHSIZE+1], *ename;

	for (mp = &message[omsgCount]; mp < &message[msgCount]; mp++)
		if (mp->m_flag & MNEW)
			break;
	if (mp >= &message[msgCount])
		for (mp = &message[omsgCount]; mp < &message[msgCount]; mp++)
			if ((mp->m_flag & MREAD) == 0)
				break;
	if (mp < &message[msgCount])
		mdot = mp - &message[0] + 1;
	else
		mdot = omsgCount + 1;
	s = d = 0;
	for (mp = &message[0], n = 0, u = 0; mp < &message[msgCount]; mp++) {
		if (mp->m_flag & MNEW)
			n++;
		if ((mp->m_flag & MREAD) == 0)
			u++;
		if (mp->m_flag & MDELETED)
			d++;
		if (mp->m_flag & MSAVED)
			s++;
	}
	ename = mailname;
	if (FUNC0(fname, sizeof(fname) - 1) >= 0) {
		FUNC3(fname, "/");
		if (FUNC5(fname, mailname, FUNC4(fname)) == 0) {
			(void)FUNC2(zname, sizeof(zname), "+%s",
			    mailname + FUNC4(fname));
			ename = zname;
		}
	}
	FUNC1("\"%s\": ", ename);
	if (msgCount == 1)
		FUNC1("1 message");
	else
		FUNC1("%d messages", msgCount);
	if (n > 0)
		FUNC1(" %d new", n);
	if (u-n > 0)
		FUNC1(" %d unread", u);
	if (d > 0)
		FUNC1(" %d deleted", d);
	if (s > 0)
		FUNC1(" %d saved", s);
	if (readonly)
		FUNC1(" [Read only]");
	FUNC1("\n");
	return (mdot);
}