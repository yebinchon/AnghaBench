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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  token_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_2__ {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int AUC_NOAUDIT ; 
 int /*<<< orphan*/  AUE_logout ; 
 int /*<<< orphan*/  A_GETCOND ; 
 scalar_t__ ENOSYS ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* pwd ; 
 int /*<<< orphan*/  tid ; 

void
FUNC10(void)
{
	token_t *tok;
	int aufd;
	uid_t uid = pwd->pw_uid;
	gid_t gid = pwd->pw_gid;
	pid_t pid = FUNC9();
	int au_cond;

	/* If we are not auditing, don't cut an audit record; just return. */
 	if (FUNC5(A_GETCOND, &au_cond, sizeof(int)) < 0) {
		if (errno == ENOSYS)
			return;
		FUNC6(1, "could not determine audit condition");
	}
	if (au_cond == AUC_NOAUDIT)
		return;

	if ((aufd = FUNC1()) == -1)
		FUNC6(1, "audit error: au_open() failed");

	/* The subject that is created (euid, egid of the current process). */
	if ((tok = FUNC3(uid, FUNC8(), FUNC7(), uid, gid, pid,
	    pid, &tid)) == NULL)
		FUNC6(1, "audit error: au_to_subject32() failed");
	FUNC4(aufd, tok);

	if ((tok = FUNC2(0, 0)) == NULL)
		FUNC6(1, "audit error: au_to_return32() failed");
	FUNC4(aufd, tok);

	if (FUNC0(aufd, 1, AUE_logout) == -1)
		FUNC6(1, "audit record was not committed.");
}