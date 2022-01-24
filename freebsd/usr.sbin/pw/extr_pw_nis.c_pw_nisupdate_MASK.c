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
struct passwd {int dummy; } ;

/* Variables and functions */
 struct passwd* FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (int,int,struct passwd*,struct passwd*) ; 
 struct passwd* FUNC8 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC15(const char * path, struct passwd * pwd, char const * user)
{
	int pfd, tfd;
	struct passwd *pw = NULL;
	struct passwd *old_pw = NULL;

	FUNC6("===> %s\n", path);
	if (pwd != NULL)
		pw = FUNC8(pwd);

	if (user != NULL)
		old_pw = FUNC0(user);

	if (FUNC10(NULL, path))
		FUNC3(1,"pw_init()");
	if ((pfd = FUNC11()) == -1) {
		FUNC9();
		FUNC3(1, "pw_lock()");
	}
	if ((tfd = FUNC13(-1)) == -1) {
		FUNC9();
		FUNC3(1, "pw_tmp()");
	}
	if (FUNC7(pfd, tfd, pw, old_pw) == -1) {
		FUNC9();
		FUNC2(tfd);
		FUNC3(1, "pw_copy()");
	}
	FUNC5(tfd);
	FUNC2(tfd);
	if (FUNC1(FUNC12(), 0644) == -1)
		FUNC3(1, "chmod()");
	if (FUNC14(FUNC12(), path) == -1)
		FUNC3(1, "rename()");

	FUNC4(pw);
	FUNC9();

	return (0);
}