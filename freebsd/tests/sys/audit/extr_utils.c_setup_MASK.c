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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  au_mask_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  _IONBF ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pollfd*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

FILE
*FUNC10(struct pollfd fd[], const char *name)
{
	au_mask_t fmask, nomask;
	fmask = FUNC5(name);
	nomask = FUNC5("no");
	FILE *pipestream;

	FUNC0((fd[0].fd = FUNC6("/dev/auditpipe", O_RDONLY)) != -1);
	FUNC0((pipestream = FUNC4(fd[0].fd, "r")) != NULL);
	fd[0].events = POLLIN;

	/*
	 * Disable stream buffering for read operations from /dev/auditpipe.
	 * Otherwise it is possible that fread(3), called via au_read_rec(3),
	 * can store buffered data in user-space unbeknown to ppoll(2), which
	 * as a result, reports that /dev/auditpipe is empty.
	 */
	FUNC1(0, FUNC8(pipestream, NULL, _IONBF, 0));

	/* Set local preselection audit_class as "no" for audit startup */
	FUNC7(fd[0].fd, &nomask);
	FUNC1(0, FUNC9("service auditd onestatus || \
	{ service auditd onestart && touch started_auditd ; }"));

	/* If 'started_auditd' exists, that means we started auditd(8) */
	if (FUNC2("started_auditd"))
		FUNC3(fd, "audit startup", pipestream);

	/* Set local preselection parameters specific to "name" audit_class */
	FUNC7(fd[0].fd, &fmask);
	return (pipestream);
}