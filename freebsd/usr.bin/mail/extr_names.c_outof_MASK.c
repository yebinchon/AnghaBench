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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  tempname ;
struct name {char* n_name; struct name* n_flink; int /*<<< orphan*/  n_type; } ;
struct header {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int GCC ; 
 int /*<<< orphan*/  GDEL ; 
 int GINREPLYTO ; 
 int GNL ; 
 int GREPLYTO ; 
 int GSUBJECT ; 
 int GTO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PATHSIZE ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 char* _PATH_CSHELL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int image ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (char*) ; 
 char* myname ; 
 int FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct header*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  senderr ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,char*) ; 
 int FUNC23 (char*,int /*<<< orphan*/ *,int,int,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 char* tmpdir ; 
 char* FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 

struct name *
FUNC28(struct name *names, FILE *fo, struct header *hp)
{
	int c, ispipe;
	struct name *np, *top;
	time_t now;
	char *date, *fname;
	FILE *fout, *fin;

	top = names;
	np = names;
	(void)FUNC24(&now);
	date = FUNC4(&now);
	while (np != NULL) {
		if (!FUNC13(np->n_name) && np->n_name[0] != '|') {
			np = np->n_flink;
			continue;
		}
		ispipe = np->n_name[0] == '|';
		if (ispipe)
			fname = np->n_name+1;
		else
			fname = FUNC6(np->n_name);

		/*
		 * See if we have copied the complete message out yet.
		 * If not, do so.
		 */

		if (image < 0) {
			int fd;
			char tempname[PATHSIZE];

			(void)FUNC22(tempname, sizeof(tempname),
			    "%s/mail.ReXXXXXXXXXX", tmpdir);
			if ((fd = FUNC14(tempname)) == -1 ||
			    (fout = FUNC1(fd, "a")) == NULL) {
				FUNC26("%s", tempname);
				senderr++;
				goto cant;
			}
			image = FUNC15(tempname, O_RDWR);
			(void)FUNC19(tempname);
			if (image < 0) {
				FUNC26("%s", tempname);
				senderr++;
				(void)FUNC0(fout);
				goto cant;
			}
			(void)FUNC7(image, F_SETFD, 1);
			FUNC10(fout, "From %s %s", myname, date);
			FUNC17(hp, fout,
			    GTO|GSUBJECT|GCC|GREPLYTO|GINREPLYTO|GNL);
			while ((c = FUNC12(fo)) != EOF)
				(void)FUNC16(c, fout);
			FUNC18(fo);
			FUNC10(fout, "\n");
			(void)FUNC9(fout);
			if (FUNC8(fout)) {
				FUNC26("%s", tempname);
				senderr++;
				(void)FUNC0(fout);
				goto cant;
			}
			(void)FUNC0(fout);
		}

		/*
		 * Now either copy "image" to the desired file
		 * or give it as the standard input to the desired
		 * program as appropriate.
		 */

		if (ispipe) {
			int pid;
			char *sh;
			sigset_t nset;

			/*
			 * XXX
			 * We can't really reuse the same image file,
			 * because multiple piped recipients will
			 * share the same lseek location and trample
			 * on one another.
			 */
			if ((sh = FUNC25("SHELL")) == NULL)
				sh = _PATH_CSHELL;
			(void)FUNC21(&nset);
			(void)FUNC20(&nset, SIGHUP);
			(void)FUNC20(&nset, SIGINT);
			(void)FUNC20(&nset, SIGQUIT);
			pid = FUNC23(sh, &nset, image, -1, "-c", fname,
			    NULL);
			if (pid < 0) {
				senderr++;
				goto cant;
			}
			FUNC11(pid);
		} else {
			int f;
			if ((fout = FUNC2(fname, "a")) == NULL) {
				FUNC26("%s", fname);
				senderr++;
				goto cant;
			}
			if ((f = FUNC5(image)) < 0) {
				FUNC26("dup");
				fin = NULL;
			} else
				fin = FUNC1(f, "r");
			if (fin == NULL) {
				FUNC10(stderr, "Can't reopen image\n");
				(void)FUNC0(fout);
				senderr++;
				goto cant;
			}
			FUNC18(fin);
			while ((c = FUNC12(fin)) != EOF)
				(void)FUNC16(c, fout);
			if (FUNC8(fout)) {
				FUNC27("%s", fname);
				senderr++;
				(void)FUNC0(fout);
				(void)FUNC0(fin);
				goto cant;
			}
			(void)FUNC0(fout);
			(void)FUNC0(fin);
		}
cant:
		/*
		 * In days of old we removed the entry from the
		 * the list; now for sake of header expansion
		 * we leave it in and mark it as deleted.
		 */
		np->n_type |= GDEL;
		np = np->n_flink;
	}
	if (image >= 0) {
		(void)FUNC3(image);
		image = -1;
	}
	return (top);
}