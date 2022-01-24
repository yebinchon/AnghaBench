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
struct passwd {int /*<<< orphan*/ * pw_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  etcpath; } ;

/* Variables and functions */
 struct passwd* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int,struct passwd*,struct passwd*) ; 
 struct passwd* FUNC6 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int) ; 
 int FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct passwd * pwd, char const * user)
{
	struct passwd	*pw = NULL;
	struct passwd	*old_pw = NULL;
	int		 rc, pfd, tfd;

	if ((rc = FUNC12()) != 0)
		return (rc);

	if (pwd != NULL)
		pw = FUNC6(pwd);

	if (user != NULL)
		old_pw = FUNC0(user);

	if (FUNC8(conf.etcpath, NULL))
		FUNC2(1, "pw_init()");
	if ((pfd = FUNC9()) == -1) {
		FUNC7();
		FUNC2(1, "pw_lock()");
	}
	if ((tfd = FUNC11(-1)) == -1) {
		FUNC7();
		FUNC2(1, "pw_tmp()");
	}
	if (FUNC5(pfd, tfd, pw, old_pw) == -1) {
		FUNC7();
		FUNC1(tfd);
		FUNC2(1, "pw_copy()");
	}
	FUNC4(tfd);
	FUNC1(tfd);
	/*
	 * in case of deletion of a user, the whole database
	 * needs to be regenerated
	 */
	if (FUNC10(pw != NULL ? pw->pw_name : NULL) == -1) {
		FUNC7();
		FUNC2(1, "pw_mkdb()");
	}
	FUNC3(pw);
	FUNC7();

	return (0);
}