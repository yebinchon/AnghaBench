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
typedef  int /*<<< orphan*/  wphone ;
typedef  int /*<<< orphan*/  uname ;
typedef  char* uintmax_t ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
struct passwd {char* pw_name; scalar_t__ pw_expire; scalar_t__ pw_change; char* pw_dir; char* pw_class; char* pw_shell; scalar_t__ pw_gid; scalar_t__ pw_uid; int /*<<< orphan*/ * pw_gecos; } ;
struct group {char* gr_name; int /*<<< orphan*/ ** gr_mem; } ;
typedef  int /*<<< orphan*/  office ;
typedef  int /*<<< orphan*/  hphone ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EXIT_SUCCESS ; 
 struct group* FUNC1 () ; 
 struct group* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct tm* FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 char* FUNC8 (struct passwd*) ; 
 char* FUNC9 (struct passwd*) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC16 (unsigned char) ; 

__attribute__((used)) static int
FUNC17(struct passwd * pwd, bool pretty, bool v7)
{
	int		j;
	char           *p;
	struct group   *grp = FUNC2(pwd->pw_gid);
	char            uname[60] = "User &", office[60] = "[None]",
			wphone[60] = "[None]", hphone[60] = "[None]";
	char		acexpire[32] = "[None]", pwexpire[32] = "[None]";
	struct tm *    tptr;

	if (!pretty) {
		p = v7 ? FUNC9(pwd) : FUNC8(pwd);
		FUNC7("%s\n", p);
		FUNC4(p);
		return (EXIT_SUCCESS);
	}

	if ((p = FUNC15(pwd->pw_gecos, ",")) != NULL) {
		FUNC13(uname, p, sizeof(uname));
		if ((p = FUNC15(NULL, ",")) != NULL) {
			FUNC13(office, p, sizeof(office));
			if ((p = FUNC15(NULL, ",")) != NULL) {
				FUNC13(wphone, p, sizeof(wphone));
				if ((p = FUNC15(NULL, "")) != NULL) {
					FUNC13(hphone, p, sizeof(hphone));
				}
			}
		}
	}
	/*
	 * Handle '&' in gecos field
	 */
	if ((p = FUNC10(uname, '&')) != NULL) {
		int             l = FUNC14(pwd->pw_name);
		int             m = FUNC14(p);

		FUNC6(p + l, p + 1, m);
		FUNC6(p, pwd->pw_name, l);
		*p = (char) FUNC16((unsigned char)*p);
	}
	if (pwd->pw_expire > (time_t)0 && (tptr = FUNC5(&pwd->pw_expire)) != NULL)
		FUNC12(acexpire, sizeof acexpire, "%c", tptr);
	if (pwd->pw_change > (time_t)0 && (tptr = FUNC5(&pwd->pw_change)) != NULL)
		FUNC12(pwexpire, sizeof pwexpire, "%c", tptr);
	FUNC7("Login Name: %-15s   #%-12ju Group: %-15s   #%ju\n"
	       " Full Name: %s\n"
	       "      Home: %-26.26s      Class: %s\n"
	       "     Shell: %-26.26s     Office: %s\n"
	       "Work Phone: %-26.26s Home Phone: %s\n"
	       "Acc Expire: %-26.26s Pwd Expire: %s\n",
	       pwd->pw_name, (uintmax_t)pwd->pw_uid,
	       grp ? grp->gr_name : "(invalid)", (uintmax_t)pwd->pw_gid,
	       uname, pwd->pw_dir, pwd->pw_class,
	       pwd->pw_shell, office, wphone, hphone,
	       acexpire, pwexpire);
        FUNC3();
	j = 0;
	while ((grp=FUNC1()) != NULL) {
		int     i = 0;
		if (grp->gr_mem != NULL) {
			while (grp->gr_mem[i] != NULL) {
				if (FUNC11(grp->gr_mem[i], pwd->pw_name)==0) {
					FUNC7(j++ == 0 ? "    Groups: %s" : ",%s", grp->gr_name);
					break;
				}
				++i;
			}
		}
	}
	FUNC0();
	FUNC7("%s", j ? "\n" : "");
	return (EXIT_SUCCESS);
}