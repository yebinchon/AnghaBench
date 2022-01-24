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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;
struct group {int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  UNPRIV_GROUP ; 
 int /*<<< orphan*/  UNPRIV_USER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct group* FUNC1 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(uid_t *uid, gid_t *gid)
{
	struct passwd *pw;
	struct group *gr;

	pw = FUNC2(UNPRIV_USER);
	if (pw == NULL) {
		FUNC3(LOG_ERR, "getpwnam(%s): %m", UNPRIV_USER);
		FUNC0(1);
	}
	*uid = pw->pw_uid;

	gr = FUNC1(UNPRIV_GROUP);
	if (gr == NULL) {
		FUNC3(LOG_ERR, "getgrnam(%s): %m", UNPRIV_GROUP);
		FUNC0(1);
	}
	*gid = gr->gr_gid;
}