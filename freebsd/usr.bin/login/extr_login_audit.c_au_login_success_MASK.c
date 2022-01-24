#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  token_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_4__ {int /*<<< orphan*/  ai_mask; int /*<<< orphan*/  ai_termid; int /*<<< orphan*/  ai_asid; int /*<<< orphan*/  ai_auid; } ;
typedef  TYPE_1__ auditinfo_t ;
typedef  int /*<<< orphan*/  au_mask_t ;
typedef  int /*<<< orphan*/  au_cond ;
struct TYPE_5__ {int /*<<< orphan*/  pw_name; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int AUC_NOAUDIT ; 
 int /*<<< orphan*/  AUE_login ; 
 int /*<<< orphan*/  A_GETCOND ; 
 scalar_t__ ENOSYS ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_3__* pwd ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  tid ; 

void
FUNC14(void)
{
	token_t *tok;
	int aufd;
	au_mask_t aumask;
	auditinfo_t auinfo;
	uid_t uid = pwd->pw_uid;
	gid_t gid = pwd->pw_gid;
	pid_t pid = FUNC12();
	int au_cond;

	/* If we are not auditing, don't cut an audit record; just return. */
 	if (FUNC6(A_GETCOND, &au_cond, sizeof(au_cond)) < 0) {
		if (errno == ENOSYS)
			return;
		FUNC9(1, "could not determine audit condition");
	}
	if (au_cond == AUC_NOAUDIT)
		return;

	/* Compute and set the user's preselection mask. */
	if (FUNC4(pwd->pw_name, &aumask) == -1)
		FUNC9(1, "could not calculate audit mask");

	/* Set the audit info for the user. */
	auinfo.ai_auid = uid;
	auinfo.ai_asid = pid;
	FUNC7(&tid, &auinfo.ai_termid, sizeof(auinfo.ai_termid));
	FUNC7(&aumask, &auinfo.ai_mask, sizeof(auinfo.ai_mask));
	if (FUNC13(&auinfo) != 0)
		FUNC8(1, "setaudit failed");

	if ((aufd = FUNC1()) == -1)
		FUNC9(1, "audit error: au_open() failed");

	if ((tok = FUNC3(uid, FUNC11(), FUNC10(), uid, gid, pid,
	    pid, &tid)) == NULL)
		FUNC9(1, "audit error: au_to_subject32() failed");
	FUNC5(aufd, tok);

	if ((tok = FUNC2(0, 0)) == NULL)
		FUNC9(1, "audit error: au_to_return32() failed");
	FUNC5(aufd, tok);

	if (FUNC0(aufd, 1, AUE_login) == -1)
		FUNC9(1, "audit record was not committed.");
}