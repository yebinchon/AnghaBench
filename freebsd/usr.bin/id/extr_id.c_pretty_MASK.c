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
typedef  int u_int ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 struct group* FUNC4 (int) ; 
 char* FUNC5 () ; 
 struct passwd* FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct passwd*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(struct passwd *pw)
{
	struct group *gr;
	u_int eid, rid;
	char *login;

	if (pw) {
		(void)FUNC9("uid\t%s\n", pw->pw_name);
		(void)FUNC9("groups\t");
		FUNC8(pw, 1);
	} else {
		if ((login = FUNC5()) == NULL)
			FUNC0(1, "getlogin");

		pw = FUNC6(rid = FUNC7());
		if (pw == NULL || FUNC10(login, pw->pw_name))
			(void)FUNC9("login\t%s\n", login);
		if (pw)
			(void)FUNC9("uid\t%s\n", pw->pw_name);
		else
			(void)FUNC9("uid\t%u\n", rid);

		if ((eid = FUNC2()) != rid) {
			if ((pw = FUNC6(eid)))
				(void)FUNC9("euid\t%s\n", pw->pw_name);
			else
				(void)FUNC9("euid\t%u\n", eid);
		}
		if ((rid = FUNC3()) != (eid = FUNC1())) {
			if ((gr = FUNC4(rid)))
				(void)FUNC9("rgid\t%s\n", gr->gr_name);
			else
				(void)FUNC9("rgid\t%u\n", rid);
		}
		(void)FUNC9("groups\t");
		FUNC8(NULL, 1);
	}
}