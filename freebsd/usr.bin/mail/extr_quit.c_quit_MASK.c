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
 int /*<<< orphan*/  LOCK_EX ; 
 int MBOX ; 
 int MDELETED ; 
 int MNEW ; 
 int MODIFY ; 
 int MPRESERVE ; 
 int MREAD ; 
 int MSAVED ; 
 int MSTATUS ; 
 int MTOUCH ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PATHSIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* Tflag ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ edit ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 char* FUNC17 (char*,struct message*) ; 
 char* mailname ; 
 scalar_t__ mailsize ; 
 struct message* message ; 
 int FUNC18 (char*) ; 
 size_t msgCount ; 
 int FUNC19 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ readonly ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  saveignore ; 
 scalar_t__ FUNC24 (struct message*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,char*) ; 
 char* tmpdir ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

void
FUNC31(void)
{
	int mcount, p, modify, autohold, anystat, holdbit, nohold;
	FILE *ibuf, *obuf, *fbuf, *rbuf, *readstat, *abuf;
	struct message *mp;
	int c, fd;
	struct stat minfo;
	char *mbox, tempname[PATHSIZE];

	/*
	 * If we are read only, we can't do anything,
	 * so just return quickly.
	 */
	if (readonly)
		return;
	/*
	 * If editing (not reading system mail box), then do the work
	 * in edstop()
	 */
	if (edit) {
		FUNC6();
		return;
	}

	/*
	 * See if there any messages to save in mbox.  If no, we
	 * can save copying mbox to /tmp and back.
	 *
	 * Check also to see if any files need to be preserved.
	 * Delete all untouched messages to keep them out of mbox.
	 * If all the messages are to be preserved, just exit with
	 * a message.
	 */

	fbuf = FUNC2(mailname, "r");
	if (fbuf == NULL)
		goto newmail;
	(void)FUNC12(FUNC11(fbuf), LOCK_EX);
	rbuf = NULL;
	if (FUNC15(FUNC11(fbuf), &minfo) >= 0 && minfo.st_size > mailsize) {
		FUNC20("New mail has arrived.\n");
		(void)FUNC25(tempname, sizeof(tempname),
		    "%s/mail.RqXXXXXXXXXX", tmpdir);
		if ((fd = FUNC18(tempname)) == -1 ||
		    (rbuf = FUNC1(fd, "w")) == NULL)
			goto newmail;
#ifdef APPEND
		(void)fseeko(fbuf, mailsize, SEEK_SET);
		while ((c = getc(fbuf)) != EOF)
			(void)putc(c, rbuf);
#else
		p = minfo.st_size - mailsize;
		while (p-- > 0) {
			c = FUNC16(fbuf);
			if (c == EOF)
				goto newmail;
			(void)FUNC21(c, rbuf);
		}
#endif
		(void)FUNC0(rbuf);
		if ((rbuf = FUNC2(tempname, "r")) == NULL)
			goto newmail;
		(void)FUNC23(tempname);
	}

	/*
	 * Adjust the message flags in each message.
	 */

	anystat = 0;
	autohold = FUNC27("hold") != NULL;
	holdbit = autohold ? MPRESERVE : MBOX;
	nohold = MBOX|MSAVED|MDELETED|MPRESERVE;
	if (FUNC27("keepsave") != NULL)
		nohold &= ~MSAVED;
	for (mp = &message[0]; mp < &message[msgCount]; mp++) {
		if (mp->m_flag & MNEW) {
			mp->m_flag &= ~MNEW;
			mp->m_flag |= MSTATUS;
		}
		if (mp->m_flag & MSTATUS)
			anystat++;
		if ((mp->m_flag & MTOUCH) == 0)
			mp->m_flag |= MPRESERVE;
		if ((mp->m_flag & nohold) == 0)
			mp->m_flag |= holdbit;
	}
	modify = 0;
	if (Tflag != NULL) {
		if ((readstat = FUNC2(Tflag, "w")) == NULL)
			Tflag = NULL;
	}
	for (c = 0, p = 0, mp = &message[0]; mp < &message[msgCount]; mp++) {
		if (mp->m_flag & MBOX)
			c++;
		if (mp->m_flag & MPRESERVE)
			p++;
		if (mp->m_flag & MODIFY)
			modify++;
		if (Tflag != NULL && (mp->m_flag & (MREAD|MDELETED)) != 0) {
			char *id;

			if ((id = FUNC17("article-id", mp)) != NULL)
				FUNC13(readstat, "%s\n", id);
		}
	}
	if (Tflag != NULL)
		(void)FUNC0(readstat);
	if (p == msgCount && !modify && !anystat) {
		FUNC20("Held %d message%s in %s\n",
			p, p == 1 ? "" : "s", mailname);
		(void)FUNC0(fbuf);
		return;
	}
	if (c == 0) {
		if (p != 0) {
			FUNC30(rbuf);
			(void)FUNC0(fbuf);
			return;
		}
		goto cream;
	}

	/*
	 * Create another temporary file and copy user's mbox file
	 * darin.  If there is no mbox, copy nothing.
	 * If he has specified "append" don't copy his mailbox,
	 * just copy saveable entries at the end.
	 */

	mbox = FUNC7("&");
	mcount = c;
	if (FUNC27("append") == NULL) {
		(void)FUNC25(tempname, sizeof(tempname),
		    "%s/mail.RmXXXXXXXXXX", tmpdir);
		if ((fd = FUNC18(tempname)) == -1 ||
		    (obuf = FUNC1(fd, "w")) == NULL) {
			FUNC28("%s", tempname);
			(void)FUNC0(fbuf);
			return;
		}
		if ((ibuf = FUNC2(tempname, "r")) == NULL) {
			FUNC28("%s", tempname);
			(void)FUNC23(tempname);
			(void)FUNC0(obuf);
			(void)FUNC0(fbuf);
			return;
		}
		(void)FUNC23(tempname);
		if ((abuf = FUNC2(mbox, "r")) != NULL) {
			while ((c = FUNC16(abuf)) != EOF)
				(void)FUNC21(c, obuf);
			(void)FUNC0(abuf);
		}
		if (FUNC9(obuf)) {
			FUNC29("%s", tempname);
			(void)FUNC0(ibuf);
			(void)FUNC0(obuf);
			(void)FUNC0(fbuf);
			return;
		}
		(void)FUNC0(obuf);
		if ((fd = FUNC19(mbox, O_CREAT | O_TRUNC | O_WRONLY, 0600)) >= 0)
			(void)FUNC4(fd);
		if ((obuf = FUNC2(mbox, "r+")) == NULL) {
			FUNC28("%s", mbox);
			(void)FUNC0(ibuf);
			(void)FUNC0(fbuf);
			return;
		}
	}
	if (FUNC27("append") != NULL) {
		if ((obuf = FUNC2(mbox, "a")) == NULL) {
			FUNC28("%s", mbox);
			(void)FUNC0(fbuf);
			return;
		}
		(void)FUNC8(FUNC11(obuf), 0600);
	}
	for (mp = &message[0]; mp < &message[msgCount]; mp++)
		if (mp->m_flag & MBOX)
			if (FUNC24(mp, obuf, saveignore, NULL) < 0) {
				FUNC29("%s", mbox);
				(void)FUNC0(ibuf);
				(void)FUNC0(obuf);
				(void)FUNC0(fbuf);
				return;
			}

	/*
	 * Copy the user's old mbox contents back
	 * to the end of the stuff we just saved.
	 * If we are appending, this is unnecessary.
	 */

	if (FUNC27("append") == NULL) {
		FUNC22(ibuf);
		c = FUNC16(ibuf);
		while (c != EOF) {
			(void)FUNC21(c, obuf);
			if (FUNC9(obuf))
				break;
			c = FUNC16(ibuf);
		}
		(void)FUNC0(ibuf);
	}
	(void)FUNC10(obuf);
	FUNC26(obuf);
	if (FUNC9(obuf)) {
		FUNC28("%s", mbox);
		(void)FUNC0(obuf);
		(void)FUNC0(fbuf);
		return;
	}
	(void)FUNC0(obuf);
	if (mcount == 1)
		FUNC20("Saved 1 message in mbox\n");
	else
		FUNC20("Saved %d messages in mbox\n", mcount);

	/*
	 * Now we are ready to copy back preserved files to
	 * the system mailbox, if any were requested.
	 */

	if (p != 0) {
		FUNC30(rbuf);
		(void)FUNC0(fbuf);
		return;
	}

	/*
	 * Finally, remove his /var/mail file.
	 * If new mail has arrived, copy it back.
	 */

cream:
	if (rbuf != NULL) {
		abuf = FUNC2(mailname, "r+");
		if (abuf == NULL)
			goto newmail;
		while ((c = FUNC16(rbuf)) != EOF)
			(void)FUNC21(c, abuf);
		(void)FUNC0(rbuf);
		FUNC26(abuf);
		(void)FUNC0(abuf);
		FUNC3(mailname);
		(void)FUNC0(fbuf);
		return;
	}
	FUNC5();
	(void)FUNC0(fbuf);
	return;

newmail:
	FUNC20("Thou hast new mail.\n");
	if (fbuf != NULL)
		(void)FUNC0(fbuf);
}