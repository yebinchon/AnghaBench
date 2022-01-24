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
typedef  int /*<<< orphan*/  uintmax_t ;
struct userconf {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_dir; scalar_t__ pw_uid; int /*<<< orphan*/  pw_name; int /*<<< orphan*/  pw_gid; } ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_2__ {int /*<<< orphan*/  rootfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_ADD ; 
 int /*<<< orphan*/  M_UPDATE ; 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int /*<<< orphan*/  W_USER ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct userconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct userconf *cnf, struct passwd *pwd,
    const char *skeldir, mode_t homemode, bool update)
{
	int skelfd = -1;

	/* Create home parents directories */
	FUNC1(conf.rootfd, pwd->pw_dir);

	if (skeldir != NULL && *skeldir != '\0') {
		if (*skeldir == '/')
			skeldir++;
		skelfd = FUNC2(conf.rootfd, skeldir, O_DIRECTORY|O_CLOEXEC);
	}

	FUNC0(conf.rootfd, pwd->pw_dir, skelfd, homemode, pwd->pw_uid,
	    pwd->pw_gid, 0);
	FUNC3(cnf, update ? M_UPDATE : M_ADD, W_USER, "%s(%ju) home %s made",
	    pwd->pw_name, (uintmax_t)pwd->pw_uid, pwd->pw_dir);
}