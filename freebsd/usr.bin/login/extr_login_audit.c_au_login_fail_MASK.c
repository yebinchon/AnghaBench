#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
typedef  int /*<<< orphan*/  token_t ;
typedef  int pid_t ;
typedef  int gid_t ;
typedef  int /*<<< orphan*/  au_cond ;
struct TYPE_2__ {int pw_uid; int pw_gid; } ;

/* Variables and functions */
 int AUC_NOAUDIT ; 
 int /*<<< orphan*/  AUE_login ; 
 int /*<<< orphan*/  A_GETCOND ; 
 scalar_t__ ENOSYS ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 TYPE_1__* pwd ; 
 int /*<<< orphan*/  tid ; 

void
FUNC11(const char *errmsg, int na)
{
	token_t *tok;
	int aufd;
	int au_cond;
	uid_t uid;
	gid_t gid;
	pid_t pid = FUNC10();

	/* If we are not auditing, don't cut an audit record; just return. */
 	if (FUNC6(A_GETCOND, &au_cond, sizeof(au_cond)) < 0) {
		if (errno == ENOSYS)
			return;
		FUNC7(1, "could not determine audit condition");
	}
	if (au_cond == AUC_NOAUDIT)
		return;

	if ((aufd = FUNC1()) == -1)
		FUNC7(1, "audit error: au_open() failed");

	if (na) {
		/*
		 * Non attributable event.  Assuming that login is not called
		 * within a user's session => auid,asid == -1.
		 */
		if ((tok = FUNC3(-1, FUNC9(), FUNC8(), -1, -1,
		    pid, -1, &tid)) == NULL)
			FUNC7(1, "audit error: au_to_subject32() failed");
	} else {
		/* We know the subject -- so use its value instead. */
		uid = pwd->pw_uid;
		gid = pwd->pw_gid;
		if ((tok = FUNC3(uid, FUNC9(), FUNC8(), uid,
		    gid, pid, pid, &tid)) == NULL)
			FUNC7(1, "audit error: au_to_subject32() failed");
	}
	FUNC5(aufd, tok);

	/* Include the error message. */
	if ((tok = FUNC4(errmsg)) == NULL)
		FUNC7(1, "audit error: au_to_text() failed");
	FUNC5(aufd, tok);

	if ((tok = FUNC2(1, errno)) == NULL)
		FUNC7(1, "audit error: au_to_return32() failed");
	FUNC5(aufd, tok);

	if (FUNC0(aufd, 1, AUE_login) == -1)
		FUNC7(1, "audit error: au_close() was not committed");
}