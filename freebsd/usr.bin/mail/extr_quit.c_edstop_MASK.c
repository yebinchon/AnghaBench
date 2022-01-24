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
typedef  int /*<<< orphan*/  tempname ;
struct stat {scalar_t__ st_size; } ;
struct message {int m_flag; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int MDELETED ; 
 int MNEW ; 
 int MODIFY ; 
 int MREAD ; 
 int MSTATUS ; 
 int PATHSIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* Tflag ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,struct message*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* mailname ; 
 scalar_t__ mailsize ; 
 struct message* message ; 
 int FUNC10 (char*) ; 
 size_t msgCount ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ readonly ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (struct message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,char*) ; 
 scalar_t__ FUNC18 (char*,struct stat*) ; 
 int /*<<< orphan*/ * stdout ; 
 char* tmpdir ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 

void
FUNC22(void)
{
	int gotcha, c;
	struct message *mp;
	FILE *obuf, *ibuf, *readstat;
	struct stat statb;
	char tempname[PATHSIZE];

	if (readonly)
		return;
	FUNC9();
	if (Tflag != NULL) {
		if ((readstat = FUNC2(Tflag, "w")) == NULL)
			Tflag = NULL;
	}
	for (mp = &message[0], gotcha = 0; mp < &message[msgCount]; mp++) {
		if (mp->m_flag & MNEW) {
			mp->m_flag &= ~MNEW;
			mp->m_flag |= MSTATUS;
		}
		if (mp->m_flag & (MODIFY|MDELETED|MSTATUS))
			gotcha++;
		if (Tflag != NULL && (mp->m_flag & (MREAD|MDELETED)) != 0) {
			char *id;

			if ((id = FUNC8("article-id", mp)) != NULL)
				FUNC5(readstat, "%s\n", id);
		}
	}
	if (Tflag != NULL)
		(void)FUNC0(readstat);
	if (!gotcha || Tflag != NULL)
		goto done;
	ibuf = NULL;
	if (FUNC18(mailname, &statb) >= 0 && statb.st_size > mailsize) {
		int fd;

		(void)FUNC17(tempname, sizeof(tempname),
		    "%s/mbox.XXXXXXXXXX", tmpdir);
		if ((fd = FUNC10(tempname)) == -1 ||
		    (obuf = FUNC1(fd, "w")) == NULL) {
			FUNC20("%s", tempname);
			FUNC13();
			FUNC14(0);
		}
		if ((ibuf = FUNC2(mailname, "r")) == NULL) {
			FUNC20("%s", mailname);
			(void)FUNC0(obuf);
			(void)FUNC15(tempname);
			FUNC13();
			FUNC14(0);
		}
		(void)FUNC6(ibuf, mailsize, SEEK_SET);
		while ((c = FUNC7(ibuf)) != EOF)
			(void)FUNC12(c, obuf);
		(void)FUNC0(ibuf);
		(void)FUNC0(obuf);
		if ((ibuf = FUNC2(tempname, "r")) == NULL) {
			FUNC20("%s", tempname);
			(void)FUNC15(tempname);
			FUNC13();
			FUNC14(0);
		}
		(void)FUNC15(tempname);
	}
	FUNC11("\"%s\" ", mailname);
	(void)FUNC4(stdout);
	if ((obuf = FUNC2(mailname, "r+")) == NULL) {
		FUNC20("%s", mailname);
		FUNC13();
		FUNC14(0);
	}
	FUNC19(obuf);
	c = 0;
	for (mp = &message[0]; mp < &message[msgCount]; mp++) {
		if ((mp->m_flag & MDELETED) != 0)
			continue;
		c++;
		if (FUNC16(mp, obuf, NULL, NULL) < 0) {
			FUNC21("%s", mailname);
			FUNC13();
			FUNC14(0);
		}
	}
	gotcha = (c == 0 && ibuf == NULL);
	if (ibuf != NULL) {
		while ((c = FUNC7(ibuf)) != EOF)
			(void)FUNC12(c, obuf);
		(void)FUNC0(ibuf);
	}
	(void)FUNC4(obuf);
	if (FUNC3(obuf)) {
		FUNC20("%s", mailname);
		FUNC13();
		FUNC14(0);
	}
	(void)FUNC0(obuf);
	if (gotcha) {
		(void)FUNC15(mailname);
		FUNC11("removed\n");
	} else
		FUNC11("complete\n");
	(void)FUNC4(stdout);

done:
	FUNC13();
}