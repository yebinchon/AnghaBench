#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct passwd {int /*<<< orphan*/  pw_expire; int /*<<< orphan*/  pw_shell; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_gecos; int /*<<< orphan*/  pw_class; int /*<<< orphan*/  pw_change; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_passwd; int /*<<< orphan*/  pw_name; } ;
struct TYPE_4__ {scalar_t__ pw_selected; int /*<<< orphan*/  pw_expire; void* pw_shell; void* pw_dir; void* pw_gecos; void* pw_class; int /*<<< orphan*/  pw_change; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; void* pw_passwd; void* pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct passwd* FUNC1 () ; 
 int npwds ; 
 TYPE_1__* pwds ; 
 int pwdsz ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct passwd *pwd;

	FUNC2();
	for (;;) {
		if (npwds == pwdsz) {
			pwdsz += pwdsz ? pwdsz : 128;
			pwds = FUNC3(pwds, pwdsz * sizeof *pwds);
		}
		if ((pwd = FUNC1()) == NULL)
			break;
		pwds[npwds].pw_name = FUNC4(pwd->pw_name);
		pwds[npwds].pw_passwd = FUNC4(pwd->pw_passwd);
		pwds[npwds].pw_uid = pwd->pw_uid;
		pwds[npwds].pw_gid = pwd->pw_gid;
		pwds[npwds].pw_change = pwd->pw_change;
		pwds[npwds].pw_class = FUNC4(pwd->pw_class);
		pwds[npwds].pw_gecos = FUNC4(pwd->pw_gecos);
		pwds[npwds].pw_dir = FUNC4(pwd->pw_dir);
		pwds[npwds].pw_shell = FUNC4(pwd->pw_shell);
		pwds[npwds].pw_expire = pwd->pw_expire;
		pwds[npwds].pw_selected = 0;
		npwds++;
	}
	FUNC0();
}