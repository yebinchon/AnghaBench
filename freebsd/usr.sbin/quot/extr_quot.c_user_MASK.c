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
typedef  int uid_t ;
struct user {char* name; int uid; } ;
struct passwd {int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct passwd* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int nusers ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct user* users ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static struct user *
FUNC7(uid_t uid)
{
	struct user *usr;
	int i;
	struct passwd *pwd;

	while (1) {
		for (usr = users + (uid&(nusers - 1)), i = nusers; --i >= 0;
		    usr--) {
			if (!usr->name) {
				usr->uid = uid;

				if (!(pwd = FUNC1(uid))) {
					if ((usr->name = (char *)FUNC2(7)))
						FUNC3(usr->name,"#%d",uid);
				} else {
					if ((usr->name = (char *)
					    FUNC2(FUNC5(pwd->pw_name) + 1)))
						FUNC4(usr->name,pwd->pw_name);
				}
				if (!usr->name)
					FUNC0(1, "allocate users");

				return usr;

			} else if (usr->uid == uid)
				return usr;

			if (usr <= users)
				usr = users + nusers;
		}
		FUNC6();
	}
}