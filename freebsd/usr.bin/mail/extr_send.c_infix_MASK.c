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
struct header {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int GBCC ; 
 int GCC ; 
 int GCOMMA ; 
 int GINREPLYTO ; 
 int GNL ; 
 int GREPLYTO ; 
 int GSUBJECT ; 
 int GTO ; 
 int PATHSIZE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct header*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 char* tmpdir ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

FILE *
FUNC14(struct header *hp, FILE *fi)
{
	FILE *nfo, *nfi;
	int c, fd;
	char tempname[PATHSIZE];

	(void)FUNC11(tempname, sizeof(tempname),
	    "%s/mail.RsXXXXXXXXXX", tmpdir);
	if ((fd = FUNC6(tempname)) == -1 ||
	    (nfo = FUNC1(fd, "w")) == NULL) {
		FUNC12("%s", tempname);
		return (fi);
	}
	if ((nfi = FUNC2(tempname, "r")) == NULL) {
		FUNC12("%s", tempname);
		(void)FUNC0(nfo);
		(void)FUNC10(tempname);
		return (fi);
	}
	(void)FUNC10(tempname);
	(void)FUNC8(hp, nfo,
	    GTO|GSUBJECT|GCC|GBCC|GREPLYTO|GINREPLYTO|GNL|GCOMMA);
	c = FUNC5(fi);
	while (c != EOF) {
		(void)FUNC7(c, nfo);
		c = FUNC5(fi);
	}
	if (FUNC3(fi)) {
		FUNC13("read");
		FUNC9(fi);
		return (fi);
	}
	(void)FUNC4(nfo);
	if (FUNC3(nfo)) {
		FUNC12("%s", tempname);
		(void)FUNC0(nfo);
		(void)FUNC0(nfi);
		FUNC9(fi);
		return (fi);
	}
	(void)FUNC0(nfo);
	(void)FUNC0(fi);
	FUNC9(nfi);
	return (nfi);
}