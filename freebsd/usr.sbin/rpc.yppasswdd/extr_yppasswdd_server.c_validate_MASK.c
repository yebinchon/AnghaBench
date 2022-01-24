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
typedef  scalar_t__ uid_t ;
struct x_passwd {char* pw_name; int /*<<< orphan*/  pw_passwd; int /*<<< orphan*/  pw_gecos; int /*<<< orphan*/  pw_shell; scalar_t__ pw_gid; scalar_t__ pw_uid; } ;
struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int /*<<< orphan*/  pw_name; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  no_chsh ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(struct passwd *opw, struct x_passwd *npw)
{

	if (npw->pw_name[0] == '+' || npw->pw_name[0] == '-') {
		FUNC2("client tried to modify an NIS entry");
		return(1);
	}

	if ((uid_t)npw->pw_uid != opw->pw_uid) {
		FUNC2("UID mismatch: client says user %s has UID %d",
			 npw->pw_name, npw->pw_uid);
		FUNC2("database says user %s has UID %d", opw->pw_name,
			 opw->pw_uid);
		return(1);
	}

	if ((gid_t)npw->pw_gid != opw->pw_gid) {
		FUNC2("GID mismatch: client says user %s has GID %d",
			 npw->pw_name, npw->pw_gid);
		FUNC2("database says user %s has GID %d", opw->pw_name,
			 opw->pw_gid);
		return(1);
	}

	/*
	 * Don't allow the user to shoot himself in the foot,
	 * even on purpose.
	 */
	if (!no_chsh && !FUNC0(npw->pw_shell)) {
		FUNC2("%s is not a valid shell", npw->pw_shell);
		return(1);
	}

	if (!no_chsh && FUNC1(npw->pw_shell)) {
		FUNC2("specified shell contains invalid characters");
		return(1);
	}

	if (FUNC1(npw->pw_gecos)) {
		FUNC2("specified gecos field contains invalid characters");
		return(1);
	}

	if (FUNC1(npw->pw_passwd)) {
		FUNC2("specified password contains invalid characters");
		return(1);
	}
	return(0);
}