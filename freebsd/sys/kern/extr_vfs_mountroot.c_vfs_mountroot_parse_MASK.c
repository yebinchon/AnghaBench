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
struct sbuf {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
#define  A_CONTINUE 131 
#define  A_PANIC 130 
#define  A_REBOOT 129 
#define  A_RETRY 128 
 char CC_NONWHITESPACE ; 
 int EDOOFUS ; 
 int PE_EOL ; 
 int /*<<< orphan*/  RB_NOSYNC ; 
 struct mount* FUNC0 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int FUNC4 (char**) ; 
 int FUNC5 (char**) ; 
 char FUNC6 (char**) ; 
 int FUNC7 (char**,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int root_mount_mddev ; 
 int root_mount_onfail ; 
 char* FUNC9 (struct sbuf*) ; 

__attribute__((used)) static int
FUNC10(struct sbuf *sb, struct mount *mpdevfs)
{
	struct mount *mp;
	char *conf;
	int error;

	root_mount_mddev = -1;

retry:
	conf = FUNC9(sb);
	mp = FUNC0(mpdevfs, mnt_list);
	error = (mp == NULL) ? 0 : EDOOFUS;
	root_mount_onfail = A_CONTINUE;
	while (mp == NULL) {
		error = FUNC7(&conf, CC_NONWHITESPACE);
		if (error == PE_EOL) {
			FUNC3(&conf);
			continue;
		}
		if (error < 0)
			break;
		switch (FUNC6(&conf)) {
		case '#':
			error = FUNC7(&conf, '\n');
			break;
		case '.':
			error = FUNC4(&conf);
			break;
		default:
			error = FUNC5(&conf);
			if (error == -1) {
				FUNC8("mountroot: invalid file system "
				    "specification.\n");
				error = 0;
			}
			break;
		}
		if (error < 0)
			break;
		/* Ignore any trailing garbage on the line. */
		if (FUNC6(&conf) != '\n') {
			FUNC8("mountroot: advancing to next directive...\n");
			(void)FUNC7(&conf, '\n');
		}
		mp = FUNC0(mpdevfs, mnt_list);
	}
	if (mp != NULL)
		return (0);

	/*
	 * We failed to mount (a new) root.
	 */
	switch (root_mount_onfail) {
	case A_CONTINUE:
		break;
	case A_PANIC:
		FUNC2("mountroot: unable to (re-)mount root.");
		/* NOTREACHED */
	case A_RETRY:
		goto retry;
	case A_REBOOT:
		FUNC1(RB_NOSYNC);
		/* NOTREACHED */
	}

	return (error);
}